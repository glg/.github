## Submitter Section

*The submitter section is meant for the person creating the PR.  Please provide all the information requested and take all the actions directed. The goal is to produce a PR that is ready-to-go and need only be merged once approved.*

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

*Provide appropriate detail that the intended audience has been notified, or why they don't need to be notified*

#### List any known security impacts or risks associated with this change.

- 

#### If and ONLY if this change cannot be rolled back with a simple 'git revert', document the rollback procedures.

*This should be updated to reflect any immediately related follow-up pushes that resulted as part of the merge*

---

## Approver Section

*The approver section is meant some someone other than the PR creator.*

### Pre-Approval Change Management Checklist

General criteria required prior to PR approval for a change to a production environment. Once all checklist items are satisfied, an approval can be granted. This is not exhaustive, and is only designed facilitate the approver in meeting the requirements of our Change Management process.  All normal code review concerns, checks and other guards may need to be satisfied as well.

- [ ] Is Original change request document linked or otherwise included?
- [ ] Is the deployment date documented? 
- [ ] Is the change audience documented?
- [ ] Have the appropriate audiences been notified of the change?
- [ ] Has change been tested in development environment (Beta, DevShip, whatever is appropriate)?
- [ ] Is the change labeled ‘Emergency’ if necessary?
- [ ] Are impacted applications listed?
- [ ] Are security impacts or risks documented?
- [ ] Is Rollback process documented? If ‘git revert’-able no documentation is necessary

### Post Merge (Post Deployment) Change Management Checklist

After a PR for a change targeting a production environment is merged, we need to verify that it indeed made it out as intended. The following checklist is intended to facilitate tracking of that verification.

- [ ] Change has been verified working in production
- [ ] Formally close the change, this is accomplished by adding a comment to this PR 'conversation'. The text here in square brackets can even be used as the contents of that comment: [ The features and functionality provided by this PR have been verified to be functioning as expected in the production environment. ]
