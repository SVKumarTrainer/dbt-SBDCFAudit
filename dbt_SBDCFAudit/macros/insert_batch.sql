{% macro insert_batch(jobname, jobtype) %}

insert into batch(retry_count,create_date,dbtjob,jobstatus,dbt_job_type) 

values(0,Current_timestamp(),'{{ jobname }}', 'Started','{{ jobtype }}' );

Commit;

{% endmacro %}