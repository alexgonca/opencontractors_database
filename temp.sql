update contract
set claimant_program =
(CASE claimant_program
 WHEN 'A30' THEN 'A3'
 WHEN 'A70' THEN 'A7'
 WHEN 'B90' THEN 'B9'
 WHEN 'C20' THEN 'C2'
WHEN 'S10' THEN 'S1'
 END)
where claimant_program in ('A30', 'A70', 'B90', 'C20', 'S10');

delete from claimant_program
WHERE code in ('A30', 'A70', 'B90', 'C20', 'S10');

create index idx_contractor_state on contract(contractor_state);
create index idx_place_of_performance_state on contract(place_of_performance_state);
create index idx_place_of_performance_state_redundant on contract(place_of_performance_state_redundant);