## Submitter Section

### Take all of the following steps

The following describes actions to be taken or information to be provided. Please provide all the
information requested and take all the actions directed. The goal is to produce a PR that is ready-to-go
and need only be merged once approved.

* Document details about the change and/or link to any existing documents with that information.
  
  **insert detail here**

* Test the change in appropriate development environment

  **insert any notes about testing here**

* List the intended audience for the change.

  **insert audience for change**

* List the applications that will be affected by this change.
  
* Provide the date the change is intended to be deployed.

* Notify the appropriate audiences of the change and the timing of deployment.

* Notify the Helpdesk this deployment and its timing.

* List any known security impacts or risks associated with this change.

* If and ONLY if this change cannot be rolled back with a simple 'git revert', document the rollback procedures.


## Approver Section

### Pre Approval Change Management Checklist

The following checklist describes the general criteria required prior to PR approval for a change to a production environment. Once all checklist items are satisfied, an approval can be granted. This is not exhaustive, and is only designed facilitate the approver in meeting the requirements of our Change Management process, all normal code review concerns, checks and other guards may need to be satisfied as well.

- [ ] Is Original change request document linked or otherwise included?
- [ ] Is the change audience documented?
- [ ] Is the intended deployment date documented?
- [ ] Have the appropriate audiences been notified of the change?
- [ ] Has Helpdesk been notified of the change?
- [ ] Has change been tested in development environment (Beta, DevShip, whatever is appropriate)?
- [ ] Is the change labeled ‘Emergency’ if necessary?
- [ ] Are impacted applications listed?
- [ ] Are security impacts or risks documented?
- [ ] Is Rollback process documented? If ‘git revert’-able no documentation is necessary

### Post Merge (Post Deployment) Change Management Checklist

After a PR for a change targeting a production environment is merged, we need to verify that it indeed made it out as intended. The following checklist is intended to facilitate tracking of that verification.

- [ ] Change has been verified working in production
- [ ] Formally close the change, this is accomplished by adding a comment to this PR 'conversation'. The text here in square brackets can even be used as the contents of that comment: [ The features and functionality provided by this PR have been verified to be functioning as expected in the production environment. ]
