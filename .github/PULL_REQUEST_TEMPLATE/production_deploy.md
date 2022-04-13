## TLDR; (Now easier!)

Just start with your PR in **Draft**. Once everything is ready, including providing all the Change Management data, click 'Ready for Review'. Once the PR is approved, and verified to have been successfully deployed to production add the label **'1 - Deployment Verified'**. That's it, no more checkboxes!!!

## Submitter Section (To be filled out on PRIOR to PR Review)

#### Document details about the change and/or link to any existing documents with that information.

> *insert detail here*

#### Test the change in appropriate development environment

> *insert any notes about testing here or ignore this if there is nothing to know*

#### List the applications that will be affected by this change.

- *list affected applications here*

#### List the intended audience for the change.

*The audience is generally not the reviewers who will approve the PR, but the consumers of the change*

- *list impacted audience here*

#### Notify the appropriate audiences of the change and the timing of deployment.

> *Provide details showing that the intended audience has been notified, or why they don't need to be notified*


#### If and ONLY if this change cannot be rolled back with a simple 'git revert', document the updated rollback procedures.

- This PR only requires a GIT revert to be rolled back

---

### Post Merge Deployment Verification

After a PR is merged, we need to verify that it indeed made it into production as intended. To track that the change has been verified to be working in production as intended, please apply the label **'1 - Deployment Verified'** to this PR.

---

---

## Approver Section (*The approver must be someone other than the PR creator.*)

### Change Management Checklist

General criteria required prior to PR approval for a change to a production environment. Once all items are satisfied, an approval can be granted. This is not exhaustive, and is only designed facilitate the approver validating the requirements of our Change Management process have been met.  All normal code review concerns, checks and other guards may need to be satisfied as well. 

Once all the requirements have been addressed simply add your approving review. The standard GitHub PR (approving) review now serves to indicate the reviewer's assertion that all change management requirements have been met.

- Is original [change request document](#document-details-about-the-change-andor-link-to-any-existing-documents-with-that-information) linked, or otherwise included?
- Has change been [tested in development](#test-the-change-in-appropriate-development-environment) environment (Beta, DevShip, whatever is appropriate)?
- Are [impacted applications](#list-the-applications-that-will-be-affected-by-this-change) listed?
- Is the [change audience](#list-the-applications-that-will-be-affected-by-this-change) documented?
- Have the [appropriate audiences](#notify-the-appropriate-audiences-of-the-change-and-the-timing-of-deployment) been notified of the change?
- Is the change labeled ‘Emergency’ if necessary?
- Is [Rollback process](#if-and-only-if-this-change-cannot-be-rolled-back-with-a-simple-git-revert-document-the-rollback-procedures) documented? If ‘git revert’-able no documentation is necessary

Change Management [Wiki](https://github.com/glg/change-control/wiki/Change-Management) provides more info.

[//]: <> (This is a hidden indicator used to help identify PRs using this template: d7ffeb8bd9f84f169ea3694cf410fdcc)
