# EcoGeno: GitHub Initial Walkthrough

## 0. Create GitHub Account

0. Open github.com
1. Sign up for GitHub

## 1. Create a GitHub Repository

0. Open github.com/[your-user-name]
1. Move to repository tab
2. Click green New button
3. Name the repository
4. Click add README.md file
5. Click green Create Repository Button
6. Click green Code button
7. Copy the URL

## 2. Clone Repository with RStudio Projects

0. Open RStudio
1. Click New Project in top right drop down
2. Click Version Control, then Git
3. Paste the URL (https://github.com/[username]/[reponame].git)
4. Name directory (same as repository name) and choose parent folder

## 3. Create first commit

0. When you have finished creating the project, R will have created a new file called `.gitignore`
1. In the Git tab of RStudio (top right panel), click the Staged box next to that file name
2. Click commit
3. Write short commit message
4. Your branch is ahead of origin/main by one commit

## 4. Side Quest: Create Personal Access Token

0. We need to create a Personal Access Token… So quick side quest to do that back on GitHub.com

1. Go to your personal account Settings tab. 
   1. Click on Profile Picture in top right of Page
   2. Click Settings on drop down menu
2. Click Developer Settings on bottom left side menu
3. Click Personal Access Tokens: Tokens (classic)
4. Generate new token drop down: Click Generate new token (classic)
5. Create Token name (e.g., `EcoGeno`)
6. Pick expiration date at the end of the semester
7. Select repo under Select scopes
8. Click green Generate Token button
9. Copy token
10. Go back to RStudio
11. Open new plain text file
12. Paste token
13. Save file outside your repository somewhere
    - You **MUST** save this outside your repo

## 5. Push changes to GitHub – Return to main quest

0. Click Push button
1. Type in username
2. Paste Personal Access Token where it asks for password
3. DONE!

## N. Rinse and repeat practice

- Make more changes, commit, and push them
- No need to do the side quest – you already have a PAT
- Maybe we will try terminal

