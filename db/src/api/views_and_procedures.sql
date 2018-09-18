create or replace view clients as
select id, name, address, created_on, updated_on from data.client;

create or replace view projects as
select id, name, client_id, created_on, updated_on from data.project;

create or replace view tasks as
select id, name, completed, project_id, created_on, updated_on from data.task;

create or replace view comments as
select 
  id, body, 'project'::text as parent_type, project_id as parent_id, 
  project_id, null as task_id, created_on, updated_on
from data.project_comment
union
select id, body, 'task'::text as parent_type, task_id as parent_id,
  null as project_id, task_id, created_on, updated_on
from data.task_comment;
