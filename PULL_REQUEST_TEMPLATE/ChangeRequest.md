# Pull Request Review Checklist

**Reviewers: Approve this pull request ONLY if a proper description is provided when merging into main or master branch.**

## Description
*Link to epic/ticket or provide a brief description of the change*

## Checklist
Please confirm the change management best practices below. If you cannot check any item, provide a brief explanation in the Additional Details section.

### Design
- [ ] PII/sensitive data considerations addressed (if relevant)
- [ ] Performance, security, compatibility impacts, or new costs documented (if relevant)
- [ ] Code follows canonical architectural diagram and flow

### Code
- [ ] Unneeded debug code has been removed
- [ ] Code has been checked against the Secure Coding Guidelines and Checklist
- [ ] Licenses for new 3rd-party dependencies have been reviewed
- [ ] The code contains no credentials, access tokens, or secrets

### Testing
- [ ] Confirmed working in dev environment
- [ ] Beta tested in full production-equivalent deployment

### Deployment
- [ ] Required Epiquery Templates deployed (if required)
- [ ] Required SECRETS.JSON, POLICY.JSON updated (if required)
- [ ] Environment variables in ORDERS file (if required)
- [ ] Rollout comms & training ready if needed
- [ ] This PR can be reverted if issues occur
- [ ] Post-merge production validation plans confirmed

### Post-Deployment Verification
- [ ] After deployment, the application generally functions as expected (smoke test)
- [ ] After deployment, the changes requested in this PR function as expected

## Additional Details
*Provide additional context for any unchecked items above*
