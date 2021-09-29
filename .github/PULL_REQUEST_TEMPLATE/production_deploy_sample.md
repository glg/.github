## Submitter Section

*The submitter section is meant for the person creating the PR.  Please provide all the information requested and take ALL the actions directed. The goal is to produce a PR that is ready-to-go and need only be merged once approved.*

#### Document details about the change and/or link to any existing documents with that information.

This is a change to the price-service to integrate a consistent external caching mechanism based around AWS provided Elasticache (Redis) services. The elasticache cluster has already been created in the AWS production environment, we simply need to deploy this change in order to take advantage of it.

The change itself is necessary because of the way GDS deploys multiple independent instances of the application and scales those up/down based on usage. The existing (now previous) version of price-service cached this information in process. While this has always caused some problems, the external shared cache will be more efficient and consistent and should address all underlying issues caused by the inconsistent cache view inherent to the in process cache model.

#### Provide the date the change is intended to be deployed.

08/13/2021

#### Test the change in appropriate development environment

The change has been tested both locally and on a DevShip

#### List the applications that will be affected by this change.

- All applications calling price-service in any way, the known apps follow: streamliner, remailer, cohorts, mosaic, pandora and the compliance service.

#### List the intended audience for the change.

*The audience is generally not the reviewers who will approve the PR, but the consumers of the change*

- This initial change will be rolled out to a percentage of all traffic destined for price-service. As the requests chosen will be effectively random there is no specific target audience.

#### Notify the appropriate audiences of the change and the timing of deployment.

As there is no predetermined audience for this change, Helpdesk will be notified of what to watch for.

#### Notify the Helpdesk about this deployment and it's timing.

Done

#### List any known security impacts or risks associated with this change.

- Given that the cache has moved out-of-process, sensitive data is potentitally stored in an external location accessible independently from the price-service application. Standard configuration of the Redis instance and access limitations have been applied and security has been notified of this new data storage location.

#### If and ONLY if this change cannot be rolled back with a simple 'git revert', document the updated rollback procedures.

- This PR only requires a GIT revert to be rolled back

---

## Approver Section

*The approver section is meant some someone other than the PR creator.*

### Pre-Approval Change Management Checklist

General criteria required prior to PR approval for a change to a production environment. Once all checklist items are satisfied, an approval can be granted. This is not exhaustive, and is only designed facilitate the approver in meeting the requirements of our Change Management process.  All normal code review concerns, checks and other guards may need to be satisfied as well.

- [ ] Is original [change request document](#document-details-about-the-change-andor-link-to-any-existing-documents-with-that-information) linked, or otherwise included?
- [ ] Is the [deployment date](#provide-the-date-the-change-is-intended-to-be-deployed) documented? 
- [ ] Is the [change audience](#list-the-applications-that-will-be-affected-by-this-change) documented?
- [ ] Have the [appropriate audiences](#notify-the-appropriate-audiences-of-the-change-and-the-timing-of-deployment) been notified of the change?
- [ ] Are [impacted applications](#list-the-applications-that-will-be-affected-by-this-change) listed?
- [ ] Has change been [tested in development](#test-the-change-in-appropriate-development-environment) environment (Beta, DevShip, whatever is appropriate)?
- [ ] Is the change labeled ‘Emergency’ if necessary?
- [ ] Are [security impacts or risks](#list-any-known-security-impacts-or-risks-associated-with-this-change) documented?
- [ ] Is [Rollback process](#if-and-only-if-this-change-cannot-be-rolled-back-with-a-simple-git-revert-document-the-rollback-procedures) documented? If ‘git revert’-able no documentation is necessary

---

### Post Merge (Post Deployment) Change Management Checklist

After a PR for a change targeting a production environment is merged, we need to verify that it indeed made it out as intended. The following checklist is intended to facilitate tracking of that verification.

- [ ] Change has been verified working in production
- [ ] Formally close the change, this is accomplished by adding a comment to this PR 'conversation'. The text here in square brackets can even be used as the contents of that comment: [ The features and functionality provided by this PR have been verified to be functioning as expected in the production environment. ]
