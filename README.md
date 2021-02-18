# terraform-azurerm-mariadb

[![Build Status](https://github.com/JamesWoolfenden/terraform-azurerm-mariadb/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-azurerm-mariadb)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-azurerm-mariadb.svg)](https://github.com/JamesWoolfenden/terraform-azurerm-mariadb/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-azurerm-mariadb.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-azurerm-mariadb/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-azurerm-mariadb/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-mariadb&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-azurerm-mariadb/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-mariadb&benchmark=INFRASTRUCTURE+SECURITY)

This is an initial module to help create a mariadb in Azure, it isn't much than a wrapper as it stands, more settings to follow.

```terraform
module "mariadb" {
  source              = "jameswoolfenden/azurerm/mariadb"
  version             = "v0.0.2"
  common_tags         = var.common_tags
  resource_group_name = azurerm_resource_group.marvel.name
}
```

You will need to upload your own 404.html and index.html as documented below.

<https://docs.microsoft.com/en-us/azure/storage/blobs/storage-blob-mariadb-website-how-to?tabs=azure-portal>

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| admin\_login | MariaDB admin username | `string` | `"lovelyhorses"` | no |
| common\_tags | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| db\_name | n/a | `string` | `"mariadb_database"` | no |
| db\_version | n/a | `string` | `"10.3"` | no |
| resource\_group | Object that contains resource group details | `any` | n/a | yes |
| server\_name | The name of the MariaDB server | `string` | `"mariadbisfine"` | no |
| sku\_name | n/a | `string` | `"GP_Gen5_4"` | no |
| storage\_mb | n/a | `number` | `102400` | no |

## Outputs

| Name | Description |
|------|-------------|
| database | n/a |
| server | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

## References

For additional context, refer to some of these links.

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-azurerm-mariadb/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-azurerm-mariadb/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/jimwoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-azurerm-mariadb&url=https://github.com/JamesWoolfenden/terraform-azurerm-mariadb
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-azurerm-mariadb&url=https://github.com/JamesWoolfenden/terraform-azurerm-mariadb
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-azurerm-mariadb
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-azurerm-mariadb
[share_email]: mailto:?subject=terraform-azurerm-mariadb&body=https://github.com/JamesWoolfenden/terraform-azurerm-mariadb
