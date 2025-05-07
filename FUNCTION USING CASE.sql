--

create or replace function get_month_name (input_date date)
returns varchar as $$
declare 
    result varchar;
begin
    case extract(month from input_date)
        when 1 then result := 'January';
        when 2 then result := 'February';
        when 3 then result := 'March';
        when 4 then result := 'April';
        when 5 then result := 'May';
        when 6 then result := 'June';
        when 7 then result := 'July';
        when 8 then result := 'August';
        when 9 then result := 'September';
        when 10 then result := 'October';
        when 11 then result := 'November';
        when 12 then result := 'December';
        else result := 'Invalid Date';
    end case;
    return result;
end;
$$ language plpgsql;

select get_month_name ('2025-08-06')

select get_month_name ('2025-11-10')



