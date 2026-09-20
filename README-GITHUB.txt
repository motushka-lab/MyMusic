# MyMusic — Windows portable player

This project can be built locally or automatically by GitHub Actions.

## Easiest way: GitHub Actions

1. Create a new GitHub repository.
2. Upload the contents of this folder to the repository.
3. Open the **Actions** tab.
4. Select **Build MyMusic for Windows**.
5. Click **Run workflow**.
6. Wait for the green checkmark.
7. Open the completed workflow run.
8. At the bottom, under **Artifacts**, download **MyMusic-Windows**.
9. Unzip it and run `MyMusic.exe`.

The workflow uses Windows runners, installs Node.js automatically, installs dependencies with `npm ci`, and creates the portable Windows executable.

## Automatic builds

The workflow also runs automatically when you push to `main` or `master`.

## Local build

If Node.js is installed, double-click `build.bat`.

The resulting executable is:

`dist/MyMusic.exe`

## Important

This is a portable prototype. The library currently stores local file paths, so music files themselves are not copied into the application. If you move the music files or use the app on another PC, you may need to add the tracks again.

## npm audit

Warnings about package vulnerabilities are separate from the build configuration. They should be reviewed and updated later; they are not what caused the previous build to fail.
