# Test Case 5: CI/CD Pipeline Setup

This test case demonstrates setting up an automated CI/CD pipeline using GitHub Actions that runs on every push to the main branch.

## What We Built

### GitHub Actions Workflow
- **Location**: `.github/workflows/deploy.yml`
- **Trigger**: Automatically runs on every push to the `main` branch
- **Environment**: Ubuntu latest runner

### Pipeline Steps
1. **Checkout code** - Gets the latest code from the repository
2. **Setup Node.js 18** - Configures the Node.js environment
3. **Install dependencies** - Runs `npm install` to install project dependencies
4. **Build Docker image** - Creates a Docker image tagged as `nodejs-api`
5. **Deploy simulation** - Prints "Deploying application to server..." message

## Files Created
- `TestCase5/.github/workflows/deploy.yml` - The GitHub Actions workflow
- `test_case_5_commands.sh` - Commands to recreate this setup

## How to Verify
1. Go to your GitHub repository
2. Click on the "Actions" tab
3. You should see a workflow run triggered by the recent commit
4. Click on the workflow run to see the logs
5. All 5 steps should show green checkmarks ✅

## Expected Results
- Workflow triggers automatically on push to main
- All steps complete successfully
- Final step shows: "Deploying application to server..."
- No failures in any step

The pipeline is now ready to automatically build and "deploy" your application every time you push code to the main branch!