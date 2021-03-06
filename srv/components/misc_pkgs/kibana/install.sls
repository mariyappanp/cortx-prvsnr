#
# Copyright (c) 2020 Seagate Technology LLC and/or its Affiliates
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU Affero General Public License for more details.
# You should have received a copy of the GNU Affero General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
# For any questions about this software or licensing,
# please email opensource@seagate.com or cortx-questions@seagate.com.
#

Install Kibana:
  pkg.installed:
    - name: kibana-oss
    - version: {{ pillar['commons']['version']['kibana-oss'] }}

{#% if (grains['os_family'] and ('7.3.2-1' in salt['pkg_resource.version']('kibana'))) %#}
# Downgrade elasticsearch to 6.8.8:
#   cmd.run:
#     - name: yum downgrade -y kibana
{#% endif %#}
