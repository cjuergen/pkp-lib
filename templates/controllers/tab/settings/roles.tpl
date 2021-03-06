{**
 * controllers/tab/settings/roles.tpl
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Page for managing user groups and stages assignments.
 *}

{* Help Link *}
{help file="settings.md" section="users-roles" class="pkp_help_tab"}

<div id="userGroupsContainer">
	{url|assign:rolesUrl router=$smarty.const.ROUTE_COMPONENT component="grid.settings.roles.UserGroupGridHandler" op="fetchGrid" escape=false}
	{load_url_in_div id="roleGridContainer" url=$rolesUrl}
</div>
