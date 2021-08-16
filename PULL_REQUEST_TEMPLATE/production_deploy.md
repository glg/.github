## Provide a description of the PR below

## Pre Approval Change Management Checklist

The following checklist describes the general criteria required prior to PR approval for a change to a production environment. Once all checklist items are satisfied, an approval can be granted. This is not exhaustive, and is only designed facilitate the approver in meeting the requirements of our Change Management process, all normal code review concerns, checks and other guards may need to be satisfied as well.

- [ ] Is Original change request document linked or otherwise included?
- [ ] Is the change audience documented?
- [ ] Document intended deployment date.
- [ ] Have the appropriate audiences been notified of the change?
- [ ] Has Helpdesk been notified of the change?
- [ ] Has change been tested in development environment (Beta, DevShip, whatever is appropriate)?
- [ ] Is the change labeled ‘Emergency’ if necessary?
- [ ] List impacted applications.
- [ ] Document any security risks or impacts
- [ ] Is Rollback process documented? If ‘git revert’-able no documentation is necessary

## Post Merge (Post Deployment) Change Management Checklist

After a PR for a change targeting a production environment is merged, we need to verify that it indeed made it out as intended. The following checklist is intended to facilitate tracking of that verification.

- [ ] Change has been verified working in production
- [ ] Formally close the change, this is accomplished by adding a comment to this PR 'conversation'. The text here in square brackets can even be used as the contents of that comment: [ The features and functionality provided by this PR have been verified to be functioning as expected in the production environment. ]