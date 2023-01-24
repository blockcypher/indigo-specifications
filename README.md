<p align="center">
  <a href="#">
    <img width="90%" alt="Indigo" src="https://www.blockcypher.com/assets/img/misc/indigo_header.png">
  </a>
</p>

<h3 align="center">
   Indigo Specifications
</h3>
<p align="center">
This repository hosts the specification of Indigo API.
</p>
<p align="center">
<a target="_blank" rel="noopener noreferrer" href="https://github.com/blockcypher/indigo-specifications/actions/workflows/cicd.yml"><img src="https://github.com/blockcypher/indigo-specifications/actions/workflows/cicd.yml/badge.svg" alt="github actions" style="max-width: 100%;"></a>
</p>
<p align="center">
One API to Rule Them All.
</p>


**WARNING: THIS SPECIFICATION IS UNDER CONSTRUCTION. ANY VARIABLE, ROUTE, PARAMETER, RELEASE CAN CHANGE AT ANY TIME.**

## Overview

Indigo is the next generation of BlockCypher's Blockchain APIs. Built with simplicity and reliability in mind. The Indigo API is specified in the [OpenAPI 3.0 format](https://www.openapis.org). 

Requests and responses can be crafted with auto-generated code using [Swagger Codegen](https://swagger.io/tools/swagger-codegen) or [OpenAPI Generator](https://openapi-generator.tech). 

Moreover, the `api.json` file on the [Releases page](https://github.com/blockcypher/indigo-specifications/releases) can be imported directly into Postman for easy debugging and testing.

## Installation

No installation is required, as the repository only includes specification files.

## Documentation

As of today, the documentation is still under construction. But once finished, it will be available on [BlockCypher website](https://www.blockcypher.com/dev/v2/indigo.html). 

## Specification Development

We have designed several commands to help you check your code:

* `make deps` to install dependencies
* `make gen` to generate the specification files
* `make check-valid` to ensure specification is valid
* `make release` to check if code passes all tests run by GitHub Actions
* `make bundle` create a bundled `api.json` file from `api.yaml`

## License

This project is available open source under the terms of the [Apache 2.0 License](https://opensource.org/licenses/Apache-2.0).

© 2023 BlockCypher