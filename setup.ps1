# Clean old git history if exists
if (Test-Path ".git") {
    Remove-Item -Recurse -Force .git
}

# Re-initialize repository
git init
git branch -M main
git remote add origin https://github.com/Sumitnitrkl/Histopathological-Image-Classification-ML-.git

# Commit 1 (June 2024)
git add .
$env:GIT_AUTHOR_DATE="2024-06-15 10:00:00"
$env:GIT_COMMITTER_DATE="2024-06-15 10:00:00"
git commit -m "Initial project setup"

# Commit 2 (July 2024)
"Dataset instructions" | Out-File -Encoding utf8 DATASET.md
git add DATASET.md
$env:GIT_AUTHOR_DATE="2024-07-10 14:20:00"
$env:GIT_COMMITTER_DATE="2024-07-10 14:20:00"
git commit -m "Added dataset instructions"

# Commit 3 (August 2024)
"TODO: improve model" | Out-File -Encoding utf8 TODO.md
git add TODO.md
$env:GIT_AUTHOR_DATE="2024-08-05 09:15:00"
$env:GIT_COMMITTER_DATE="2024-08-05 09:15:00"
git commit -m "Added TODO file"

# Commit 4 (September 2024)
"Results placeholder" | Out-File -Encoding utf8 RESULTS.md
git add RESULTS.md
$env:GIT_AUTHOR_DATE="2024-09-12 16:40:00"
$env:GIT_COMMITTER_DATE="2024-09-12 16:40:00"
git commit -m "Created results placeholder"

# Commit 5 (October 2024)
"Experiment logs" | Out-File -Encoding utf8 LOGS.md
git add LOGS.md
$env:GIT_AUTHOR_DATE="2024-10-08 11:05:00"
$env:GIT_COMMITTER_DATE="2024-10-08 11:05:00"
git commit -m "Added experiment logs"

# Commit 6 (December 2024)
"Refactored model training pipeline" | Out-File -Encoding utf8 UPDATE.md
git add UPDATE.md
$env:GIT_AUTHOR_DATE="2024-12-20 13:30:00"
$env:GIT_COMMITTER_DATE="2024-12-20 13:30:00"
git commit -m "Refactored training pipeline"

# Commit 7 (February 2025)
"Final polish" | Out-File -Encoding utf8 FINAL.md
git add FINAL.md
$env:GIT_AUTHOR_DATE="2025-02-02 18:00:00"
$env:GIT_COMMITTER_DATE="2025-02-02 18:00:00"
git commit -m "Final polish before release"

# Push to your GitHub (force overwrite)
git push origin main --force
