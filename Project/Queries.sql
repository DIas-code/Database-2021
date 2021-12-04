select date,s.v_vin, c.f_name, c.s_name,c.gender
from sale_info s right join customers c on c.c_id = s.c_id
 order by c.gender desc ;

select date,v_vin, c.f_name, c.s_name,c.annual_income_in_$
from sale_info s right join customers c on c.c_id = s.c_id
order by c.annual_income_in_$ desc ;

select v.v_vin
from sale_info s
         left join vehicle v on v.b_name = s.b_name
where v.v_status = 'Sold' and v.b_name=s.b_name
group by v.v_vin;
select v.b_name,sum(v.v_price_in_$) from vehicle v
    right join sale_info s on s.b_name=v.b_name
where v.v_status = 'Sold'
  and s.date<'2021-01-01' and s.date>'2019-12-31'
    group by v.b_name;
select v.b_name,count(v.v_status) from vehicle v
    right join sale_info s on s.b_name=v.b_name
where v.v_status = 'Sold'
  and s.date<'2021-01-01' and s.date>'2019-12-31'
    group by v.b_name;
select * from vehicle right join sale_info si on vehicle.v_vin = si.v_vin
where v_status='Sold';