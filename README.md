<!-- Add banner here -->
![Banner](https://github.com/arpit-agrawaldba/tableau-deployment/blob/main/header.png)

# Project Title

<!-- Describe your project in brief -->
## Tableau Server Deployment - Linux

The project provides you an script to publish tableau workbooks in .twbx format between tableau servers.

This code currently certified for following version:

    Tableau Server - 2019.2,2020.*

    Operating System - RHEL7.* and AWS Linux 2



# Table of contents

- [Project Title](#project-title)
- [Table of contents](#table-of-contents)
- [Installation](#installation)
- [Prepare Code](#Prepare-Code)
- [Usage](#usage)
- [Development](#development)
- [Contribute](#contribute)
    - [Sponsor](#sponsor)
    - [Adding new features or fixing bugs](#adding-new-features-or-fixing-bugs)
- [License](#license)
- [Footer](#footer)

# Installation
[(Back to top)](#table-of-contents)

To use this project, first clone the repo on your device using the command below:

```git init```

```git clone https://github.com/arpit-agrawaldba/tableau-deployment.git```

# Prepare Code
[(Back to top)](#table-of-contents)

Before .twbx files can be published this script needs all the .twbx file in the current working directory.
Script finds all the files with extension *.twbx and publish them all on the server in a for loop using command find . -type f -name "*.twbx.



# Usage
[(Back to top)](#table-of-contents)

    
    ksh <directory_repo_download>/tableau-deployment/deployment.ksh -s <Tableau Server URL> -u <Tableau User> -p <Tableau User password> -P <Tableau Project Name>
    
    where
    <Tableau Server URL> - Tableau Server URL where contents needs to be published.
    <Tableau User> - Tableau Username which holds permission to publish content on specified project.
    <Tableau User password> - Password of Tableau User mentioned above.
    <Tableau Project Name> - Tableau Server Project name where content needs to be published.

For example, when repository has been downloaded under directory /root/tableau, then execute

    ksh /root/tableau/tableau-deployment/deployment.ksh -s https://tableauserver_name -p deployment_user -p password149 -P FINANCE_PROJECT
    
  
# Development
[(Back to top)](#table-of-contents)


# Contribute
[(Back to top)](#table-of-contents)

Currently this repoistory is not open for external contribution.

### Sponsor
[(Back to top)](#table-of-contents)

This project is currently self-sponsored.

### Adding new features or fixing bugs
[(Back to top)](#table-of-contents)

No open bug fixes at the moment.

# License
[(Back to top)](#table-of-contents)


[GNU General Public License version 3](https://opensource.org/licenses/GPL-3.0)

# Footer
[(Back to top)](#table-of-contents)


<!-- Add the footer here -->

![Footer](https://github.com/arpit-agrawaldba/tableau-deployment/blob/main/footer.png)
