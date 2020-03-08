select tod.Id as Id
from Weather as tod, Weather as yest
where tod.Temperature>yest.Temperature and 
TIMESTAMPDIFF(day, yest.RecordDate,tod.RecordDate)=1;