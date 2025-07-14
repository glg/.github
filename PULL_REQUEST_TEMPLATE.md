# Change Management  
## Pull Request Template  
**Services | Product Engineering**

> **Note: 1–6 are required for ISO as well as the post-deployment verification steps**

---

### Reminders
- Have you deployed any needed epiquery templates that support these changes?
- Have you made the required changes to `ORDERS`, `SECRETS.JSON`, or `POLICY.JSON`?
  - Are all needed environment variables present in the `ORDERS` file?
- <what other reminders would be helpful here?>

---

### SDLC Checklist

1. **Describe what the change does and what parts of the codebase are affected**  
   a. Provide a link to the helpdesk ticket or kanban ticket describing the changes needed  
   b. *-or-* Explain why this change is necessary and what goals it aims to achieve  

2. **Does this PR collect, retrieve, or handle any Personally Identifiable Information (PII)?**  
   - [ ] yes: please specify the type of PII  
   - [ ] protective measures are described (e.g., encryption, secure transmission, data minimization)  

3. **Are there any potential impacts on performance, security, compatibility, etc., and have you documented any risks?**  
   - [ ] no  
   - [ ] yes – risks have been documented below:  

4. **Are there any additional resources (CPU, memory, storage), licenses, infrastructure, or costs associated with this change?**  
   - [ ] yes  

5. **If this change will be rolled out over time or at a later date, what is the plan for rolling out this change, including expected timelines?**

6. **How has this code been tested?**  
   - [ ] Unit Tests  
   - [ ] System Integration Tests  
   - [ ] Local Testing on Development Machine  
   - [ ] non-main production deploy & smoke test (required)  
     - *(typically what we have called a “beta”, this means deploying the changes to a production environment and verifying the functionality before merging the changes into the main production branch.)*

7. **If GitHub PR Revert is not the manner to revert these changes, please specify the revert plan and other dependent changes if issues occur after deployment**  

---

### Post-Deployment Verification

- [ ] After deployment, the app generally functions as expected (smoke test)  
- [ ] After deployment, the changes provided in this PR function as expected 
