DROP TABLE IF exists public.procedure_details_aggregate;

create table public.procedure_details_aggregate
as
select proceduretype,sum(price) sum_price from
procedure_details group by proceduretype;