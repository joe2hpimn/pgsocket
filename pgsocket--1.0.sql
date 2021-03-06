-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION pgsocket" to load this file. \quit

CREATE OR REPLACE FUNCTION public.pgsocketsend(IN t_address text, IN i_port integer, IN i_timeoutsec integer, IN by_data bytea)
RETURNS void
AS 'MODULE_PATHNAME' LANGUAGE C STABLE;