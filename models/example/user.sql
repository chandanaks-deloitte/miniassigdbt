{{ config(materialized='table') }}

select
value:"@AccountId" as AccountId,
value:"@CreationDate" as CreationDate,
value:"@DisplayName" as DisplayName,
value:"@DownVotes" as DownVotes,
value:"@Id" as Id,
value:"@LastAccessDate" as LastAccessDate,
value:"@ProfileImageUrl" as ProfileImageUrl,
value:"@Reputation" as Reputation,
value:"@UpVotes" as UpVotes,
value:"@Views" as Views,
value:"@WebsiteUrl" as WebsiteUrl
from "ANALYTICS"."DBT"."USERS",
lateral flatten(to_array("ANALYTICS"."DBT"."USERS".src_xml:"$"))
