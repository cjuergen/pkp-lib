{**
 * templates/frontend/pages/submissions.tpl
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the page to view the editorial team.
 *
 * @uses $currentContext Journal|Press The current journal or press
 * @uses $submissionChecklist array List of requirements for submissions
 *}
{include file="frontend/components/header.tpl" pageTitle="about.submissions"}

<div class="page page_submissions">
	{include file="frontend/components/breadcrumbs.tpl" currentTitleKey="about.submissions"}

	{* Login/register prompt *}
	{capture assign="login"}
		<a href="{url page="login"}">{translate key="about.onlineSubmissions.login"}</a>
	{/capture}
	{capture assign="register"}
		<a href="{url page="user" op="register"}">{translate key="about.onlineSubmissions.register"}</a>
	{/capture}
	<p>
		{translate key="about.onlineSubmissions.registrationRequired" login=$login register=$register}
	</p>

	{if $currentContext->getLocalizedSetting('authorGuidelines')}
		<div class="author_guidelines">
			<h2>
				{translate key="about.authorGuidelines"}
				{include file="frontend/components/editLink.tpl" page="management" op="settings" path="journal" anchor="guidelines" sectionTitleKey="about.authorGuidelines"}
			</h2>
			{$currentContext->getLocalizedSetting('authorGuidelines')|nl2br}
		</div>
	{/if}

	{if $submissionChecklist}
		<div class="submission_checklist">
			<h2>
				{translate key="about.submissionPreparationChecklist"}
				{include file="frontend/components/editLink.tpl" page="management" op="settings" path="publication" anchor="submissionStage" sectionTitleKey="about.submissionPreparationChecklist"}
			</h2>
			{translate key="about.submissionPreparationChecklist.description"}
			<ul>
				{foreach from=$submissionChecklist item=checklistItem}
					<li>
						{$checklistItem.content|nl2br}
					</li>
				{/foreach}
			</ul>
		</div>
	{/if}

	{if $currentContext->getLocalizedSetting('copyrightNotice')}
		<div class="author_guidelines">
			<h2>
				{translate key="about.copyrightNotice"}
				{include file="frontend/components/editLink.tpl" page="management" op="settings" path="journal" anchor="guidelines" sectionTitleKey="about.copyrightNotice"}
			</h2>
			{$currentContext->getLocalizedSetting('copyrightNotice')|nl2br}
		</div>
	{/if}

</div><!-- .page -->

{include file="common/frontend/footer.tpl"}
