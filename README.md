# Azure Storage Automation with GitHub Actions

This repository contains a set of GitHub Actions workflows designed to automate various interactions with Azure Storage. These actions enable seamless management of storage resources directly from GitHub, facilitating a more integrated and automated cloud workflow.

## Features

- **Automatic Storage Container Creation**: A workflow to create a new container in an existing Azure Storage Account.
- **Data Upload Workflow**: A workflow to upload the contents of a specified folder from the repository to an Azure Storage container.

## Workflows

### 1. Create Azure Storage Container

This workflow (`create-container.yml`) allows for the creation of a new container in a specified Azure Storage Account. It is manually triggered and requires the name of the container to be created.

### 2. Copy Data to Azure Storage Container

The `copy-to-storage.yml` workflow is designed to upload files from the "data" directory in this repository to a specified container in Azure Storage. This workflow is manually triggered and requires the target container name for uploading the files.

## Getting Started

### Prerequisites

- An Azure account with an active subscription.
- An Azure Storage Account.
- Azure Service Principal with appropriate permissions.

### Setting up GitHub Secrets

Store your Azure credentials as a secret in your GitHub repository:

1. Go to your GitHub repository.
2. Navigate to 'Settings' > 'Secrets'.
3. Click on 'New repository secret'.
4. Name the secret `AZURE_CREDENTIALS` and paste your Azure Service Principal credentials in JSON format.

### Usage

To use these workflows:

1. Navigate to the 'Actions' tab in your GitHub repository.
2. Select the desired workflow.
3. Click 'Run workflow', enter the required inputs, and start the workflow.

## Contributing

Contributions to enhance these workflows are welcome. Please read the [CONTRIBUTING.md](CONTRIBUTING.md) file for details on our code of conduct, and the process for submitting pull requests to us.

## License

This project is licensed under the [MIT License](LICENSE.md) - see the LICENSE.md file for details.

## Acknowledgments

- The GitHub Community for providing valuable resources and examples.
- The Azure team for their extensive documentation and support.

---

For more details on each workflow, refer to the individual `.yml` files in the `.github/workflows` directory.
