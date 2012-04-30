/*
	HDMantisConnectExample.m
	Provides example and test runs the service's proxy methods.
	Generated by SudzC.com
*/
#import "HDMantisConnectExample.h"
#import "HDMantisConnect.h"

@implementation HDMantisConnectExample

- (void)run {
	// Create the service
	HDMantisConnect* service = [HDMantisConnect service];
	service.logging = YES;
	// service.username = @"username";
	// service.password = @"password";
	

	// Returns NSString*. Get the value for the specified configuration variable.
	[service mc_config_get_string:self action:@selector(mc_config_get_stringHandler:) username: @"" password: @"" config_var: @""];

	// Returns HDObjectRefArray*. Get the enumeration for access levels.
	[service mc_enum_access_levels:self action:@selector(mc_enum_access_levelsHandler:) username: @"" password: @""];

	// Returns HDObjectRefArray*. Get the enumeration for custom field types.
	[service mc_enum_custom_field_types:self action:@selector(mc_enum_custom_field_typesHandler:) username: @"" password: @""];

	// Returns HDObjectRefArray*. Get the enumeration for ETAs.
	[service mc_enum_etas:self action:@selector(mc_enum_etasHandler:) username: @"" password: @""];

	// Returns NSString*. Get the enumeration for the specified enumeration type.
	[service mc_enum_get:self action:@selector(mc_enum_getHandler:) username: @"" password: @"" enumeration: @""];

	// Returns HDObjectRefArray*. Get the enumeration for priorities.
	[service mc_enum_priorities:self action:@selector(mc_enum_prioritiesHandler:) username: @"" password: @""];

	// Returns HDObjectRefArray*. Get the enumeration for project statuses.
	[service mc_enum_project_status:self action:@selector(mc_enum_project_statusHandler:) username: @"" password: @""];

	// Returns HDObjectRefArray*. Get the enumeration for project view states.
	[service mc_enum_project_view_states:self action:@selector(mc_enum_project_view_statesHandler:) username: @"" password: @""];

	// Returns HDObjectRefArray*. Get the enumeration for projections.
	[service mc_enum_projections:self action:@selector(mc_enum_projectionsHandler:) username: @"" password: @""];

	// Returns HDObjectRefArray*. Get the enumeration for reproducibilities.
	[service mc_enum_reproducibilities:self action:@selector(mc_enum_reproducibilitiesHandler:) username: @"" password: @""];

	// Returns HDObjectRefArray*. Get the enumeration for resolutions.
	[service mc_enum_resolutions:self action:@selector(mc_enum_resolutionsHandler:) username: @"" password: @""];

	// Returns HDObjectRefArray*. Get the enumeration for severities.
	[service mc_enum_severities:self action:@selector(mc_enum_severitiesHandler:) username: @"" password: @""];

	// Returns HDObjectRefArray*. Get the enumeration for statuses.
	[service mc_enum_status:self action:@selector(mc_enum_statusHandler:) username: @"" password: @""];

	// Returns HDObjectRefArray*. Get the enumeration for view states.
	[service mc_enum_view_states:self action:@selector(mc_enum_view_statesHandler:) username: @"" password: @""];

	// Returns HDFilterDataArray*. Get the filters defined for the specified project.
	[service mc_filter_get:self action:@selector(mc_filter_getHandler:) username: @"" password: @"" project_id: 0];

	// Returns HDIssueHeaderDataArray*. Get the issue headers that match the specified filter and paging details.
	[service mc_filter_get_issue_headers:self action:@selector(mc_filter_get_issue_headersHandler:) username: @"" password: @"" project_id: 0 filter_id: 0 page_number: 0 per_page: 0];

	// Returns HDIssueDataArray*. Get the issues that match the specified filter and paging details.
	[service mc_filter_get_issues:self action:@selector(mc_filter_get_issuesHandler:) username: @"" password: @"" project_id: 0 filter_id: 0 page_number: 0 per_page: 0];

	// Returns int. Submit the specified issue details.
	[service mc_issue_add:self action:@selector(mc_issue_addHandler:) username: @"" password: @"" issue: [[HDIssueData alloc] init]];

	// Returns int. Submit a new issue attachment.
	[service mc_issue_attachment_add:self action:@selector(mc_issue_attachment_addHandler:) username: @"" password: @"" issue_id: 0 name: @"" file_type: @"" content: [NSData data]];

	// Returns BOOL. Delete the issue attachment with the specified id.
	[service mc_issue_attachment_delete:self action:@selector(mc_issue_attachment_deleteHandler:) username: @"" password: @"" issue_attachment_id: 0];

	// Returns NSData*. Get the data for the specified issue attachment.
	[service mc_issue_attachment_get:self action:@selector(mc_issue_attachment_getHandler:) username: @"" password: @"" issue_attachment_id: 0];

	// Returns BOOL. Notifies MantisBT of a check-in for the issue with the specified id.
	[service mc_issue_checkin:self action:@selector(mc_issue_checkinHandler:) username: @"" password: @"" issue_id: 0 comment: @"" fixed: NO];

	// Returns BOOL. Delete the issue with the specified id.
	[service mc_issue_delete:self action:@selector(mc_issue_deleteHandler:) username: @"" password: @"" issue_id: 0];

	// Returns BOOL. Check there exists an issue with the specified id.
	[service mc_issue_exists:self action:@selector(mc_issue_existsHandler:) username: @"" password: @"" issue_id: 0];

	// Returns HDIssueData*. Get the issue with the specified id.
	[service mc_issue_get:self action:@selector(mc_issue_getHandler:) username: @"" password: @"" issue_id: 0];

	// Returns int. Get the latest submitted issue in the specified project.
	[service mc_issue_get_biggest_id:self action:@selector(mc_issue_get_biggest_idHandler:) username: @"" password: @"" project_id: 0];

	// Returns int. Get the id of the issue with the specified summary.
	[service mc_issue_get_id_from_summary:self action:@selector(mc_issue_get_id_from_summaryHandler:) username: @"" password: @"" summary: @""];

	// Returns int. Submit a new note.
	[service mc_issue_note_add:self action:@selector(mc_issue_note_addHandler:) username: @"" password: @"" issue_id: 0 note: [[HDIssueNoteData alloc] init]];

	// Returns BOOL. Delete the note with the specified id.
	[service mc_issue_note_delete:self action:@selector(mc_issue_note_deleteHandler:) username: @"" password: @"" issue_note_id: 0];

	// Returns BOOL. Update a specific note of a specific issue.
	[service mc_issue_note_update:self action:@selector(mc_issue_note_updateHandler:) username: @"" password: @"" note: [[HDIssueNoteData alloc] init]];

	// Returns int. Submit a new relationship.
	[service mc_issue_relationship_add:self action:@selector(mc_issue_relationship_addHandler:) username: @"" password: @"" issue_id: 0 relationship: [[HDRelationshipData alloc] init]];

	// Returns BOOL. Delete the relationship for the specified issue.
	[service mc_issue_relationship_delete:self action:@selector(mc_issue_relationship_deleteHandler:) username: @"" password: @"" issue_id: 0 relationship_id: 0];

	// Returns BOOL. Sets the tags for a specified issue.
	[service mc_issue_set_tags:self action:@selector(mc_issue_set_tagsHandler:) username: @"" password: @"" issue_id: 0 tags: [[HDTagDataArray alloc] init]];

	// Returns BOOL. Update Issue method.
	[service mc_issue_update:self action:@selector(mc_issue_updateHandler:) username: @"" password: @"" issueId: 0 issue: [[HDIssueData alloc] init]];

	// Returns int. Add a new project to the tracker (must have admin privileges)
	[service mc_project_add:self action:@selector(mc_project_addHandler:) username: @"" password: @"" project: [[HDProjectData alloc] init]];

	// Returns int. Add a category of specific project.
	[service mc_project_add_category:self action:@selector(mc_project_add_categoryHandler:) username: @"" password: @"" project_id: 0 p_category_name: @""];

	// Returns int. Submit a new project attachment.
	[service mc_project_attachment_add:self action:@selector(mc_project_attachment_addHandler:) username: @"" password: @"" project_id: 0 name: @"" title: @"" description: @"" file_type: @"" content: [NSData data]];

	// Returns BOOL. Delete the project attachment with the specified id.
	[service mc_project_attachment_delete:self action:@selector(mc_project_attachment_deleteHandler:) username: @"" password: @"" project_attachment_id: 0];

	// Returns NSData*. Get the data for the specified project attachment.
	[service mc_project_attachment_get:self action:@selector(mc_project_attachment_getHandler:) username: @"" password: @"" project_attachment_id: 0];

	// Returns BOOL. Add a new project to the tracker (must have admin privileges)
	[service mc_project_delete:self action:@selector(mc_project_deleteHandler:) username: @"" password: @"" project_id: 0];

	// Returns int. Delete a category of specific project.
	[service mc_project_delete_category:self action:@selector(mc_project_delete_categoryHandler:) username: @"" password: @"" project_id: 0 p_category_name: @""];

	// Returns HDStringArray*. Get the subprojects ID of a specific project.
	[service mc_project_get_all_subprojects:self action:@selector(mc_project_get_all_subprojectsHandler:) username: @"" password: @"" project_id: 0];

	// Returns HDProjectAttachmentDataArray*. Get the attachments that belong to the specified project.
	[service mc_project_get_attachments:self action:@selector(mc_project_get_attachmentsHandler:) username: @"" password: @"" project_id: 0];

	// Returns HDStringArray*. Get the categories belonging to the specified project.
	[service mc_project_get_categories:self action:@selector(mc_project_get_categoriesHandler:) username: @"" password: @"" project_id: 0];

	// Returns HDCustomFieldDefinitionDataArray*. Get the custom fields that belong to the specified project.
	[service mc_project_get_custom_fields:self action:@selector(mc_project_get_custom_fieldsHandler:) username: @"" password: @"" project_id: 0];

	// Returns int. Get the id of the project with the specified name.
	[service mc_project_get_id_from_name:self action:@selector(mc_project_get_id_from_nameHandler:) username: @"" password: @"" project_name: @""];

	// Returns HDIssueHeaderDataArray*. Get the issue headers that match the specified project id and paging details.
	[service mc_project_get_issue_headers:self action:@selector(mc_project_get_issue_headersHandler:) username: @"" password: @"" project_id: 0 page_number: 0 per_page: 0];

	// Returns HDIssueDataArray*. Get the issues that match the specified project id and paging details.
	[service mc_project_get_issues:self action:@selector(mc_project_get_issuesHandler:) username: @"" password: @"" project_id: 0 page_number: 0 per_page: 0];

	// Returns HDProjectVersionDataArray*. Get the released versions that belong to the specified project.
	[service mc_project_get_released_versions:self action:@selector(mc_project_get_released_versionsHandler:) username: @"" password: @"" project_id: 0];

	// Returns HDProjectVersionDataArray*. Get the unreleased version that belong to the specified project.
	[service mc_project_get_unreleased_versions:self action:@selector(mc_project_get_unreleased_versionsHandler:) username: @"" password: @"" project_id: 0];

	// Returns HDAccountDataArray*. Get appropriate users assigned to a project by access level.
	[service mc_project_get_users:self action:@selector(mc_project_get_usersHandler:) username: @"" password: @"" project_id: 0 access: 0];

	// Returns HDProjectVersionDataArray*. Get the versions belonging to the specified project.
	[service mc_project_get_versions:self action:@selector(mc_project_get_versionsHandler:) username: @"" password: @"" project_id: 0];

	// Returns int. Rename a category of specific project.
	[service mc_project_rename_category_by_name:self action:@selector(mc_project_rename_category_by_nameHandler:) username: @"" password: @"" project_id: 0 p_category_name: @"" p_category_name_new: @"" p_assigned_to: 0];

	// Returns BOOL. Update a specific project to the tracker (must have admin privileges)
	[service mc_project_update:self action:@selector(mc_project_updateHandler:) username: @"" password: @"" project_id: 0 project: [[HDProjectData alloc] init]];

	// Returns int. Submit the specified version details.
	[service mc_project_version_add:self action:@selector(mc_project_version_addHandler:) username: @"" password: @"" version: [[HDProjectVersionData alloc] init]];

	// Returns BOOL. Delete the version with the specified id.
	[service mc_project_version_delete:self action:@selector(mc_project_version_deleteHandler:) username: @"" password: @"" version_id: 0];

	// Returns BOOL. Update version method.
	[service mc_project_version_update:self action:@selector(mc_project_version_updateHandler:) username: @"" password: @"" version_id: 0 version: [[HDProjectVersionData alloc] init]];

	// Returns HDProjectDataArray*. Get the list of projects that are accessible to the logged in user.
	[service mc_projects_get_user_accessible:self action:@selector(mc_projects_get_user_accessibleHandler:) username: @"" password: @""];

	// Returns int. Creates a tag.
	[service mc_tag_add:self action:@selector(mc_tag_addHandler:) username: @"" password: @"" tag: [[HDTagData alloc] init]];

	// Returns BOOL. Deletes a tag.
	[service mc_tag_delete:self action:@selector(mc_tag_deleteHandler:) username: @"" password: @"" tag_id: 0];

	// Returns HDTagDataSearchResult*. Gets all the tags.
	[service mc_tag_get_all:self action:@selector(mc_tag_get_allHandler:) username: @"" password: @"" page_number: 0 per_page: 0];

	// Returns NSString*. Get the value for the specified user preference.
	[service mc_user_pref_get_pref:self action:@selector(mc_user_pref_get_prefHandler:) username: @"" password: @"" project_id: 0 pref_name: @""];

	// Returns HDProfileDataSearchResult*. Get profiles available to the current user.
	[service mc_user_profiles_get_all:self action:@selector(mc_user_profiles_get_allHandler:) username: @"" password: @"" page_number: 0 per_page: 0];

	// Returns NSString*. 
	[service mc_version:self action:@selector(mc_versionHandler:)];
}

	

// Handle the response from mc_config_get_string.
		
- (void) mc_config_get_stringHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSString* result
		NSString* result = (NSString*)value;
	NSLog(@"mc_config_get_string returned the value: %@", result);
			
}
	

// Handle the response from mc_enum_access_levels.
		
- (void) mc_enum_access_levelsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDObjectRefArray* result
		HDObjectRefArray* result = (HDObjectRefArray*)value;
	NSLog(@"mc_enum_access_levels returned the value: %@", result);
			
}
	

// Handle the response from mc_enum_custom_field_types.
		
- (void) mc_enum_custom_field_typesHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDObjectRefArray* result
		HDObjectRefArray* result = (HDObjectRefArray*)value;
	NSLog(@"mc_enum_custom_field_types returned the value: %@", result);
			
}
	

// Handle the response from mc_enum_etas.
		
- (void) mc_enum_etasHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDObjectRefArray* result
		HDObjectRefArray* result = (HDObjectRefArray*)value;
	NSLog(@"mc_enum_etas returned the value: %@", result);
			
}
	

// Handle the response from mc_enum_get.
		
- (void) mc_enum_getHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSString* result
		NSString* result = (NSString*)value;
	NSLog(@"mc_enum_get returned the value: %@", result);
			
}
	

// Handle the response from mc_enum_priorities.
		
- (void) mc_enum_prioritiesHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDObjectRefArray* result
		HDObjectRefArray* result = (HDObjectRefArray*)value;
	NSLog(@"mc_enum_priorities returned the value: %@", result);
			
}
	

// Handle the response from mc_enum_project_status.
		
- (void) mc_enum_project_statusHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDObjectRefArray* result
		HDObjectRefArray* result = (HDObjectRefArray*)value;
	NSLog(@"mc_enum_project_status returned the value: %@", result);
			
}
	

// Handle the response from mc_enum_project_view_states.
		
- (void) mc_enum_project_view_statesHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDObjectRefArray* result
		HDObjectRefArray* result = (HDObjectRefArray*)value;
	NSLog(@"mc_enum_project_view_states returned the value: %@", result);
			
}
	

// Handle the response from mc_enum_projections.
		
- (void) mc_enum_projectionsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDObjectRefArray* result
		HDObjectRefArray* result = (HDObjectRefArray*)value;
	NSLog(@"mc_enum_projections returned the value: %@", result);
			
}
	

// Handle the response from mc_enum_reproducibilities.
		
- (void) mc_enum_reproducibilitiesHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDObjectRefArray* result
		HDObjectRefArray* result = (HDObjectRefArray*)value;
	NSLog(@"mc_enum_reproducibilities returned the value: %@", result);
			
}
	

// Handle the response from mc_enum_resolutions.
		
- (void) mc_enum_resolutionsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDObjectRefArray* result
		HDObjectRefArray* result = (HDObjectRefArray*)value;
	NSLog(@"mc_enum_resolutions returned the value: %@", result);
			
}
	

// Handle the response from mc_enum_severities.
		
- (void) mc_enum_severitiesHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDObjectRefArray* result
		HDObjectRefArray* result = (HDObjectRefArray*)value;
	NSLog(@"mc_enum_severities returned the value: %@", result);
			
}
	

// Handle the response from mc_enum_status.
		
- (void) mc_enum_statusHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDObjectRefArray* result
		HDObjectRefArray* result = (HDObjectRefArray*)value;
	NSLog(@"mc_enum_status returned the value: %@", result);
			
}
	

// Handle the response from mc_enum_view_states.
		
- (void) mc_enum_view_statesHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDObjectRefArray* result
		HDObjectRefArray* result = (HDObjectRefArray*)value;
	NSLog(@"mc_enum_view_states returned the value: %@", result);
			
}
	

// Handle the response from mc_filter_get.
		
- (void) mc_filter_getHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDFilterDataArray* result
		HDFilterDataArray* result = (HDFilterDataArray*)value;
	NSLog(@"mc_filter_get returned the value: %@", result);
			
}
	

// Handle the response from mc_filter_get_issue_headers.
		
- (void) mc_filter_get_issue_headersHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDIssueHeaderDataArray* result
		HDIssueHeaderDataArray* result = (HDIssueHeaderDataArray*)value;
	NSLog(@"mc_filter_get_issue_headers returned the value: %@", result);
			
}
	

// Handle the response from mc_filter_get_issues.
		
- (void) mc_filter_get_issuesHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDIssueDataArray* result
		HDIssueDataArray* result = (HDIssueDataArray*)value;
	NSLog(@"mc_filter_get_issues returned the value: %@", result);
			
}
	

// Handle the response from mc_issue_add.
		
- (void) mc_issue_addHandler: (int) value {
			

	// Do something with the int result
		
	NSLog(@"mc_issue_add returned the value: %@", [NSNumber numberWithInt:value]);
			
}
	

// Handle the response from mc_issue_attachment_add.
		
- (void) mc_issue_attachment_addHandler: (int) value {
			

	// Do something with the int result
		
	NSLog(@"mc_issue_attachment_add returned the value: %@", [NSNumber numberWithInt:value]);
			
}
	

// Handle the response from mc_issue_attachment_delete.
		
- (void) mc_issue_attachment_deleteHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"mc_issue_attachment_delete returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from mc_issue_attachment_get.
		
- (void) mc_issue_attachment_getHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSData* result
		NSData* result = (NSData*)value;
	NSLog(@"mc_issue_attachment_get returned the value: %@", result);
			
}
	

// Handle the response from mc_issue_checkin.
		
- (void) mc_issue_checkinHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"mc_issue_checkin returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from mc_issue_delete.
		
- (void) mc_issue_deleteHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"mc_issue_delete returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from mc_issue_exists.
		
- (void) mc_issue_existsHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"mc_issue_exists returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from mc_issue_get.
		
- (void) mc_issue_getHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDIssueData* result
		HDIssueData* result = (HDIssueData*)value;
	NSLog(@"mc_issue_get returned the value: %@", result);
			
}
	

// Handle the response from mc_issue_get_biggest_id.
		
- (void) mc_issue_get_biggest_idHandler: (int) value {
			

	// Do something with the int result
		
	NSLog(@"mc_issue_get_biggest_id returned the value: %@", [NSNumber numberWithInt:value]);
			
}
	

// Handle the response from mc_issue_get_id_from_summary.
		
- (void) mc_issue_get_id_from_summaryHandler: (int) value {
			

	// Do something with the int result
		
	NSLog(@"mc_issue_get_id_from_summary returned the value: %@", [NSNumber numberWithInt:value]);
			
}
	

// Handle the response from mc_issue_note_add.
		
- (void) mc_issue_note_addHandler: (int) value {
			

	// Do something with the int result
		
	NSLog(@"mc_issue_note_add returned the value: %@", [NSNumber numberWithInt:value]);
			
}
	

// Handle the response from mc_issue_note_delete.
		
- (void) mc_issue_note_deleteHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"mc_issue_note_delete returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from mc_issue_note_update.
		
- (void) mc_issue_note_updateHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"mc_issue_note_update returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from mc_issue_relationship_add.
		
- (void) mc_issue_relationship_addHandler: (int) value {
			

	// Do something with the int result
		
	NSLog(@"mc_issue_relationship_add returned the value: %@", [NSNumber numberWithInt:value]);
			
}
	

// Handle the response from mc_issue_relationship_delete.
		
- (void) mc_issue_relationship_deleteHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"mc_issue_relationship_delete returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from mc_issue_set_tags.
		
- (void) mc_issue_set_tagsHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"mc_issue_set_tags returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from mc_issue_update.
		
- (void) mc_issue_updateHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"mc_issue_update returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from mc_project_add.
		
- (void) mc_project_addHandler: (int) value {
			

	// Do something with the int result
		
	NSLog(@"mc_project_add returned the value: %@", [NSNumber numberWithInt:value]);
			
}
	

// Handle the response from mc_project_add_category.
		
- (void) mc_project_add_categoryHandler: (int) value {
			

	// Do something with the int result
		
	NSLog(@"mc_project_add_category returned the value: %@", [NSNumber numberWithInt:value]);
			
}
	

// Handle the response from mc_project_attachment_add.
		
- (void) mc_project_attachment_addHandler: (int) value {
			

	// Do something with the int result
		
	NSLog(@"mc_project_attachment_add returned the value: %@", [NSNumber numberWithInt:value]);
			
}
	

// Handle the response from mc_project_attachment_delete.
		
- (void) mc_project_attachment_deleteHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"mc_project_attachment_delete returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from mc_project_attachment_get.
		
- (void) mc_project_attachment_getHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSData* result
		NSData* result = (NSData*)value;
	NSLog(@"mc_project_attachment_get returned the value: %@", result);
			
}
	

// Handle the response from mc_project_delete.
		
- (void) mc_project_deleteHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"mc_project_delete returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from mc_project_delete_category.
		
- (void) mc_project_delete_categoryHandler: (int) value {
			

	// Do something with the int result
		
	NSLog(@"mc_project_delete_category returned the value: %@", [NSNumber numberWithInt:value]);
			
}
	

// Handle the response from mc_project_get_all_subprojects.
		
- (void) mc_project_get_all_subprojectsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDStringArray* result
		HDStringArray* result = (HDStringArray*)value;
	NSLog(@"mc_project_get_all_subprojects returned the value: %@", result);
			
}
	

// Handle the response from mc_project_get_attachments.
		
- (void) mc_project_get_attachmentsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDProjectAttachmentDataArray* result
		HDProjectAttachmentDataArray* result = (HDProjectAttachmentDataArray*)value;
	NSLog(@"mc_project_get_attachments returned the value: %@", result);
			
}
	

// Handle the response from mc_project_get_categories.
		
- (void) mc_project_get_categoriesHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDStringArray* result
		HDStringArray* result = (HDStringArray*)value;
	NSLog(@"mc_project_get_categories returned the value: %@", result);
			
}
	

// Handle the response from mc_project_get_custom_fields.
		
- (void) mc_project_get_custom_fieldsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDCustomFieldDefinitionDataArray* result
		HDCustomFieldDefinitionDataArray* result = (HDCustomFieldDefinitionDataArray*)value;
	NSLog(@"mc_project_get_custom_fields returned the value: %@", result);
			
}
	

// Handle the response from mc_project_get_id_from_name.
		
- (void) mc_project_get_id_from_nameHandler: (int) value {
			

	// Do something with the int result
		
	NSLog(@"mc_project_get_id_from_name returned the value: %@", [NSNumber numberWithInt:value]);
			
}
	

// Handle the response from mc_project_get_issue_headers.
		
- (void) mc_project_get_issue_headersHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDIssueHeaderDataArray* result
		HDIssueHeaderDataArray* result = (HDIssueHeaderDataArray*)value;
	NSLog(@"mc_project_get_issue_headers returned the value: %@", result);
			
}
	

// Handle the response from mc_project_get_issues.
		
- (void) mc_project_get_issuesHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDIssueDataArray* result
		HDIssueDataArray* result = (HDIssueDataArray*)value;
	NSLog(@"mc_project_get_issues returned the value: %@", result);
			
}
	

// Handle the response from mc_project_get_released_versions.
		
- (void) mc_project_get_released_versionsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDProjectVersionDataArray* result
		HDProjectVersionDataArray* result = (HDProjectVersionDataArray*)value;
	NSLog(@"mc_project_get_released_versions returned the value: %@", result);
			
}
	

// Handle the response from mc_project_get_unreleased_versions.
		
- (void) mc_project_get_unreleased_versionsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDProjectVersionDataArray* result
		HDProjectVersionDataArray* result = (HDProjectVersionDataArray*)value;
	NSLog(@"mc_project_get_unreleased_versions returned the value: %@", result);
			
}
	

// Handle the response from mc_project_get_users.
		
- (void) mc_project_get_usersHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDAccountDataArray* result
		HDAccountDataArray* result = (HDAccountDataArray*)value;
	NSLog(@"mc_project_get_users returned the value: %@", result);
			
}
	

// Handle the response from mc_project_get_versions.
		
- (void) mc_project_get_versionsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDProjectVersionDataArray* result
		HDProjectVersionDataArray* result = (HDProjectVersionDataArray*)value;
	NSLog(@"mc_project_get_versions returned the value: %@", result);
			
}
	

// Handle the response from mc_project_rename_category_by_name.
		
- (void) mc_project_rename_category_by_nameHandler: (int) value {
			

	// Do something with the int result
		
	NSLog(@"mc_project_rename_category_by_name returned the value: %@", [NSNumber numberWithInt:value]);
			
}
	

// Handle the response from mc_project_update.
		
- (void) mc_project_updateHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"mc_project_update returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from mc_project_version_add.
		
- (void) mc_project_version_addHandler: (int) value {
			

	// Do something with the int result
		
	NSLog(@"mc_project_version_add returned the value: %@", [NSNumber numberWithInt:value]);
			
}
	

// Handle the response from mc_project_version_delete.
		
- (void) mc_project_version_deleteHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"mc_project_version_delete returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from mc_project_version_update.
		
- (void) mc_project_version_updateHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"mc_project_version_update returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from mc_projects_get_user_accessible.
		
- (void) mc_projects_get_user_accessibleHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDProjectDataArray* result
		HDProjectDataArray* result = (HDProjectDataArray*)value;
	NSLog(@"mc_projects_get_user_accessible returned the value: %@", result);
			
}
	

// Handle the response from mc_tag_add.
		
- (void) mc_tag_addHandler: (int) value {
			

	// Do something with the int result
		
	NSLog(@"mc_tag_add returned the value: %@", [NSNumber numberWithInt:value]);
			
}
	

// Handle the response from mc_tag_delete.
		
- (void) mc_tag_deleteHandler: (BOOL) value {
			

	// Do something with the BOOL result
		
	NSLog(@"mc_tag_delete returned the value: %@", [NSNumber numberWithBool:value]);
			
}
	

// Handle the response from mc_tag_get_all.
		
- (void) mc_tag_get_allHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDTagDataSearchResult* result
		HDTagDataSearchResult* result = (HDTagDataSearchResult*)value;
	NSLog(@"mc_tag_get_all returned the value: %@", result);
			
}
	

// Handle the response from mc_user_pref_get_pref.
		
- (void) mc_user_pref_get_prefHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSString* result
		NSString* result = (NSString*)value;
	NSLog(@"mc_user_pref_get_pref returned the value: %@", result);
			
}
	

// Handle the response from mc_user_profiles_get_all.
		
- (void) mc_user_profiles_get_allHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the HDProfileDataSearchResult* result
		HDProfileDataSearchResult* result = (HDProfileDataSearchResult*)value;
	NSLog(@"mc_user_profiles_get_all returned the value: %@", result);
			
}
	

// Handle the response from mc_version.
		
- (void) mc_versionHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSString* result
		NSString* result = (NSString*)value;
	NSLog(@"mc_version returned the value: %@", result);
			
}
	

@end
		