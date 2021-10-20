✓ - covered by existing template in streamliner repo
*1 - Can be removed as per discussion with David Wolff, we don't have the details here to collect this effectively now. So this can be removed and will be added back later

[What is all this?](https://github.com/glg/change-control/wiki/Change-Management)

## Submitter Section (To be filled out on PR creation)

*The submitter section is meant for the person creating the PR.  Please provide all the information requested and take ALL the actions directed. The goal is to produce a PR that is ready-to-go and need only be merged once approved.*

#### Document details about the change and/or link to any existing documents with that information.

> *insert detail here*

#### Provide the date the change is intended to be deployed.

> *date of intended deployment goes here*

#### Test the change in appropriate development environment

> *insert any notes about testing here or ignore this if there is nothing to know*

#### List the applications that will be affected by this change.

- 

#### List the intended audience for the change.

*The audience is generally not the reviewers who will approve the PR, but the consumers of the change*

- 

#### Notify the appropriate audiences of the change and the timing of deployment.

*Provide details showing that the intended audience has been notified, or why they don't need to be notified*

*1 #### List any known security impacts or risks associated with this change.

*1 - 

#### If and ONLY if this change cannot be rolled back with a simple 'git revert', document the updated rollback procedures.

- This PR only requires a GIT revert to be rolled back

---

### Post Merge and Deployment Checklist

After a PR for a change targeting a production environment is merged, we need to verify that it indeed made it out as intended. The following checklist is intended to facilitate tracking of that verification.

✓ - [ ] Change has been verified working in production
- [ ] Formally close the change, this is accomplished by adding a comment to this PR 'conversation'. The text here in square brackets can even be used as the contents of that comment: [ The features and functionality provided by this PR have been verified to be functioning as expected in the production environment. ]

---

---

## Approver Section

*The approver must be some someone other than the PR creator.*

### Pre-Approval Change Management Checklist

General criteria required prior to PR approval for a change to a production environment. Once all checklist items are satisfied, an approval can be granted. This is not exhaustive, and is only designed facilitate the approver in meeting the requirements of our Change Management process.  All normal code review concerns, checks and other guards may need to be satisfied as well.



✓ - [ ] Is original [change request document](#document-details-about-the-change-andor-link-to-any-existing-documents-with-that-information) linked, or otherwise included?
✓ - [ ] Is the [deployment date](#provide-the-date-the-change-is-intended-to-be-deployed) documented? 
✓ - [ ] Is the [change audience](#list-the-applications-that-will-be-affected-by-this-change) documented?
✓ - [ ] Have the [appropriate audiences](#notify-the-appropriate-audiences-of-the-change-and-the-timing-of-deployment) been notified of the change?
- [ ] Are [impacted applications](#list-the-applications-that-will-be-affected-by-this-change) listed?
✓ - [ ] Has change been [tested in development](#test-the-change-in-appropriate-development-environment) environment (Beta, DevShip, whatever is appropriate)?
- [ ] Is the change labeled ‘Emergency’ if necessary?
*1 - [ ] Are [security impacts or risks](#list-any-known-security-impacts-or-risks-associated-with-this-change) documented?
✓ - [ ] Is [Rollback process](#if-and-only-if-this-change-cannot-be-rolled-back-with-a-simple-git-revert-document-the-rollback-procedures) documented? If ‘git revert’-able no documentation is necessary
  (I think this is implicit in their process, this is not explicitly on their checklist but could be an easy add)
[//]: <> (This is a hidden indicator used to help identify PRs using this template: d7ffeb8bd9f84f169ea3694cf410fdcc)