# Copyright 2024 strongDM Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

####################################
# Configure StrongDM provider
####################################
provider "sdm" {
  # Using UK API host
  # If the host is not configured, it will default to the US control plane (api.strongdm.com:443)
  host = "api.uk.strongdm.com:443"
}

####################################
# Create a postgres datasource for example
####################################
resource "sdm_resource" "postgres_example" {
  postgres {
    name     = "Example Postgres Datasource"
    hostname = "example.strongdm.com"
    database = "example"
    username = "example"
    password = "example"
    port     = 5432
    tags     = { env = "dev" }
  }
}