## Provide a description of the PR below

1. Document or link to any primary change documents.

1. Provide the intended audience for the change.

1. List the applications that will be affected by this change.

1. What date is the change to be deployed?

1. Notify the appropriate audiences of the change and the timing of deployment.

1. Notify the Helpdesk this deployment.

1. Test the change in appropriate development environment

1. List any known security impacts or risks associated with this change.

1. If and ONLY if this change cannot be rolled back with a simple 'git revert', document the rollback procedures.


## Pre Approval Change Management Checklist

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

## Post Merge (Post Deployment) Change Management Checklist

After a PR for a change targeting a production environment is merged, we need to verify that it indeed made it out as intended. The following checklist is intended to facilitate tracking of that verification.

- [ ] Change has been verified working in production
- [ ] Formally close the change, this is accomplished by adding a comment to this PR 'conversation'. The text here in square brackets can even be used as the contents of that comment: [ The features and functionality provided by this PR have been verified to be functioning as expected in the production environment. ]
