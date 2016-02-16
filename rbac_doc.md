#Managing users and projects
##Basic concepts

**Users**: A user is an individual or a service with login credentials to the OpenStack environment. A user has one or more roles and belongs to one or more projects.

**Projects**: Projects are organizational units in the cloud, and are also known as tenants or accounts. Each user is a member of one or more projects. Within a project, a user creates and manages resources such as instances and volumes. Administrators can set limits to how many resources (instances, vCPU, volumes, and more) that a project is allowed to create.

**Roles**: A role is a group of privileges that allow a user to perform a specific set of operations.

**Groups**: Groups work as the link between users and roles. A user can be a member of one or more groups and a group can have one or more roles associated with it.

Your IBM Cloud OpenStack Services installation comes with four predefined roles: **cloud_admin**, **project_admin**, **\_member\_**, and **heat_stack_owner**.

- **cloud_admin** allows cloud level access control. This allows you to perform API execution irrespective of the project you belong to.
- **project_admin** allows project level access control.
- **\_member\_** allows the user to use the resources (like instances and volumes) that are allocated for the project.
- **heat_stack_owner** allows the user to create heat stacks in the project.

With your IBM Cloud OpenStack Services installation you receive one user with Cloud_Admin privileges who can create other users.

Note that cloud_admin privileges for project resources are not automatically extended to newly created projects. You must manually add cloud_admin privileges to any new projects. You might prefer that the project_admin has control of the project resources instead of the cloud_admin. This means that the cloud_admin cannot view or manage the project resources such as instances and volumes. If you want the cloud_admin to have privileges for user-defined projects, you should assign the cloud_admin role under that project using the dashboard or the REST API.

Feature | cloud_admin | project_admin (within project) |  \_member\_
------- | ----------- | ------------------------------ | -----------
**Users** |||
Create user | Y |  Y  | N
Update user | Y |  Y  | Y (Self)
Get user    |Y  | Y  | Y (Self)
Delete user |Y  | Y |  N
Change password | Y  | Y  | Y (Self)
List user   |Y  | Y |  N
**Roles**|||
Create role | N |  N|   N
Update role |N  | N  | N
Get role    |Y  | Y |  N
Delete role |N  | N |  N
List role   |Y  | Y |  N
**Projects**|||
Create project  |Y  | N |  N
Update project  |Y  | Y |  N
Get project| Y   |Y   |N
Delete project  |Y  | N   |N
List projects   |Y  | Y  | N
List user projects  |Y  | Y  | Y (Self)
List users within projects  |Y|   Y  | N
**Groups**|||
Create, update, or delete group| Y  | N |  N
Get group   |Y  | Y |  Y
List groups |Y  | Y  | Y
List groups for user  |  Y  | Y |  N
List users in group |Y  | Y  | Y
Add or remove user from group |  Y  | Y|   N
##[group stuff]
###Consequences of disabling projects
Users with the Cloud_Admin role can enable and disable projects. When you disable a project, it has these consequences:

- In the dashboard, users can no longer access the project from the CURRENT PROJECT list on the Project tab.
- Users who are members of only the disabled project can no longer log in.
- You cannot launch instances for a disabled project. Instances that are already running are not automatically terminated. You must stop them manually.
- The data for a disabled project is maintained so that you can enable the project at any time.

###Access to the support tool
If you want your users to be able to open a support ticket, you must request access for them. In the support tool, submit a ticket with this information:

- First name
- Last name
- Email address
- Work telephone
- Cell phone
- Job title
- Role: Manager or Performer
  - **Manager** can view all tickets across the entire instance. Select this role for users with Project_Admin privileges.
  - **Performer** can view only the tickets which they open. Select this role for users with _member_ privileges.
You can request access for multiple users in a single ticket. The users should receive their login credentials by email within four business days.

##Using the dashboard
###Adding a project
1. Log in to the dashboard and choose the Admin_Project project (or another project where you have the Cloud_Admin role) from the CURRENT PROJECT list.
2. In the Admin tab, open the Identity Panel and click on **Projects**.
3. Click **Create Project**.
4. On the Project Info tab in the Create Project window, enter a name and description for the project. By default, the project is enabled.
5. On the Project Members tab, add members to the project and assign the appropriate roles.
6. On the Project Groups tab, add groups of users to the project and assign the appropriate roles.
7. On the Quota tab, edit quota values.
8. Click **Create Project**.
The Projects list shows the project, including its assigned ID.

###Updating a project
You can update a project to change its name or description, and to enable or temporarily disable it.

1. In the Admin tab, open the Identity Panel and click on **Projects**.
2. Select the project that you want to update.
3. Select Edit Project from the More list.
4. In the Edit Project window, you can update a project to change its name or description, and to enable or temporarily disable it. By default, the project is enabled. To temporarily disable it, clear the **Enabled** check box. To enable a disabled project, select the **Enabled** check box.
5. Click **Save**.

###Modifying user assignments for a project
If you have the Cloud_Admin role you can assign roles on any project. If you have the Project_Admin role you can modify assignments on projects where you have the Project_Admin role applied.

When you create users, you must assign them to a primary or default project. You can assign users to additional projects or update and remove assignments.

1. In the Admin tab, open the Identity Panel and click on **Projects**.
2. Click the **Modify Users** button for the project that you want to modify.

The Edit Project window shows these lists of users:
- **All Users**: Users that are available to be assigned to the current project.
- **Project Members**: Users that are assigned to the current project.
You can also assign groups of users in the Project Groups tab.

###Deleting projects
1. On the Admin tab, click the **Projects** category.
2. Select the projects that you want to delete.
3. Click **Delete Projects** to confirm the deletion.

###Creating a user account
If you have the Cloud_Admin and Project_Admin roles you can create new user accounts. When you create a user account, you must assign the account to a primary project. You also have the option of assigning the account to additional projects. Before you can delete a user account, you must remove the user account from its primary project.

1. Log in to the dashboard and choose the Admin_Project project (or another project where you have the Cloud_Admin or Project_Admin role assigned) from the CURRENT PROJECT list.
2. In the Admin tab, open the Identity Panel and click on **Users**.
3. Click **Create User**.
4. In the **Create User** window, enter a user name, email, and preliminary password for the user. Confirm the password. Select a project from the Primary Project list. Choose a role for the user from the Role list. Default is Member.
5. Click **Create User** to confirm your changes.
The dashboard assigns an ID to the user, and the user appears in the Users category.

###Disabling or enabling a user
If you have the Cloud_Admin role you can enable and disable user accounts. When you disable a user account, the user can no longer log in. However, the data for the user is maintained so that you can enable the user at any time.

1. In the Admin tab, open the Identity panel and click on **Users**.
2. Locate the user that you want to disable or enable in the Users list.
3. Select **Disable User** or **Enable User** from the **More** list.
In the Enabled column, the enabled value updates to either True or False.


