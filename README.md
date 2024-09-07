# 🏠 Academic Homepage Template

Welcome to this academic homepage template, designed for simplicity and ease of use. Built with Jekyll and hosted on GitHub Pages, this single-page layout allows you to present your academic profile and publications in a clean, straightforward manner. No HTML/CSS expertise is required; all you need to do is update some YAML files.

## 🚢 Quick Start: Deployment on GitHub Pages

1. **Fork the Repository**: Click the 'Fork' button at the top right of this page and clone the forked repository to your local machine.
2. **Rename the Repository**: Change the repository name to `your-username.github.io` where `your-username` is your GitHub username.
3. **Delete or Update CNAME**: If a `CNAME` file exists and you're not using a custom domain, delete it.
4. **Go Live**: Navigate to `Settings > Pages`. GitHub will automatically build your site. Once built, you'll see your new homepage at `http://your-username.github.io`.

## 🛠 Configuration and Customization

### 📝 General Site Settings

Open the `_config.yml` file and update the following fields:

- `title`: Set this to the title you want for your homepage. Example: "John Doe's Homepage."
- `description`: A brief tagline or description of your academic interests.
- `url`: Set this to `"http://your-username.github.io"` replacing `your-username` with your GitHub username.

### 📈 Add Google Analytics (Optional)

If you wish to track site visits, add your Google Analytics ID:

- `google_analytics`: Your Google Analytics ID (e.g., `UA-XXXXXXXXX`).

## 🪞 Adding Your Personal and Academic Information

All personal and academic information goes into `_data/about.yml`.

- **Required Fields**: `name`, `picture`, `affiliation`, `title`, `bio`.
- **Optional Fields**: `emails`, `github_username`, `linkedin_username`, `google_scholar_id`, `orcid_id`

### 📄 Example `about.yml`

```yaml
name: "John Doe"
picture: "/assets/img/profile_pic.jpg"
affiliation: "Anytown University"
title: "PhD Candidate in Computer Science"
bio: "John is a PhD candidate specializing in machine learning, advised by [Prof. Jane Smith](https://example.com)."
emails:
  - john.doe@gmail.com
  - j.doe@anytown.edu
# ... more optional fields
```

## 📚 Showcasing Your Publications

To display your publications, edit `_data/publications.yml`.
You can bold your name in the author list using `**Your name**`.

- **Required Fields**: `title`, `authors`, `date`, `doi`, `pdf`
- **Optional Fields**: `journal`, `image`, `github`, `arxiv`, `slides`, `poster`,

### 📃 Example `publications.yml`

```yaml
- title: "Paper Title"
  authors: "**John Doe**, Jane Smith, Emily Clark"
  journal: "Journal of Something"
  date: "2023-04-01"
  doi: "DOI_here"
  image: "/assets/img/paper_image.jpg"
  pdf: "/assets/pdf/paper.pdf"
  github: "github_repo"
  arxiv: "arxiv_id"
```

## 🖼️ Adding Assets

Place your profile picture, paper images, and PDFs in the `assets/` directory.

## 🛠️ Local Development Setup

Before testing your site locally, you'll need to set up your local environment:

1. Open a terminal and navigate to the project directory.
2. Run `make install`.

This will install the necessary dependencies and configure your environment. After running the command, either open a new terminal or run `source ~/.bashrc` to update your `PATH`.

## 🧪 Testing Your Site Locally

After setting up your local environment, you can test the site locally. Open a terminal in the project directory and run:

```bash
make run
```

or

```bash
bundle exec jekyll serve
```

This will build the site and make it accessible at `http://localhost:4000/`.
