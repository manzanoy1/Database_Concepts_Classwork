use ap;

select 
	if(grouping(account_number) = 1, 'account_total', account_number) as 'account_number',
    sum(line_item_amount) as 'line_item_amount'
from 
	Invoice_Line_Items
group by account_number with rollup
having grouping(account_number) = 1;
