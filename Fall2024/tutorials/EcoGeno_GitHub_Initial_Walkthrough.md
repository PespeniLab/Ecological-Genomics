# EcoGeno: GitHub Initial Walkthrough

## Create a GitHub Repository

1. Open github.com/[your-user-name]
2. Move to repository tab
3. Click green New button
4. Name the repository
5. Click add README.md file
6. Click green Create Repository Button
7. Click green Code button
8. Copy the URL

## Clone Repository with RStudio Projects

1. Open RStudio
2. Click New Project in top right drop down
3. Click Version Control, then Git
4. Paste the URL (https://github.com/[username]/[reponame].git)
5. Name directory (same as repository name) and choose parent folder

## Create first commit

1. When you have finished creating the project, R will have created a new file called `.gitignore`
2. In the Git tab of RStudio (top right panel), click the Staged box next to that file name
3. Click commit
4. Write short commit message
5. Your branch is ahead of origin/main by one commit

## Create Personal Access Token – Side Quest

1. We need to create a Personal Access Token… So quick side quest to do that back on GitHub.com
2. Go to your personal account Settings tab. 
   1. Click on Profile Picture in top right of Page
   2. Click Settings on drop down menu
3. Click Developer Settings on right side menu
4. Click Personal Access Tokens: Tokens (classic)
5. Generate new token drop down: Click Generate new token (classic)
6. Create Token name (e.g., `EcoGeno`)
7. Pick expiration date at the end of the semester
8. Select repo under Select scopes
9. Click green Generate Token button
10. Copy token
11. Go back to RStudio
12. Open new plain text file
13. Paste token
14. Save file outside your repository somewhere

## Push changes to GitHub – Return to main quest

1. Click Push button
2. Type in username
3. Paste Personal Access Token where it asks for password
4. DONE!

## Rinse and repeat practice

- Make more changes, commit, and push them
- No need to do the create PAT side quest
- Maybe we will try terminal

