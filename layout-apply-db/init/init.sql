-- Copyright (C) 2025 NEC Corporation.
-- 
-- Licensed under the Apache License, Version 2.0 (the "License"); you may
-- not use this file except in compliance with the License. You may obtain
-- a copy of the License at
-- 
--     http://www.apache.org/licenses/LICENSE-2.0
-- 
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
-- WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
-- License for the specific language governing permissions and limitations
-- under the License.

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;


CREATE TABLE public.applystatus (
applyid character varying(10) NOT NULL,
status character varying(12),
procedures jsonb,
applyresult jsonb,
rollbackprocedures jsonb,
startedat timestamp without time zone,
endedat timestamp without time zone,
canceledat timestamp without time zone,
executerollback boolean,
rollbackstatus character varying(12),
rollbackresult jsonb,
rollbackstartedat timestamp without time zone,
rollbackendedat timestamp without time zone,
resumeprocedures jsonb,
resumeresult jsonb,
processid integer,
executioncommand text,
processstartedat text,
suspendedat timestamp without time zone,
resumedat timestamp without time zone
);

--ALTER TABLE public.applystatus OWNER TO postgres;

ALTER TABLE ONLY public.applystatus ADD CONSTRAINT applystatus_pkey PRIMARY KEY (applyid);

GRANT ALL ON TABLE public.applystatus TO user01;