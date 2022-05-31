{{ config(materialized='table') }}

select
value:"@Class" as Class,
value:"@Date"::Timestamp as Date,
value:"@Id" as Id,
value:"@Name" as Name,
value:"@TagBased"::Boolean as TagBased,
value:"@UserId" as UserId
from "ANALYTICS"."DBT"."BADGES",
lateral flatten(to_array("ANALYTICS"."DBT"."BADGES".src_xml:"$"))
