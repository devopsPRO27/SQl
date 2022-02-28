# 2 classes to store all the records from the database
# Country  -> id , size , name , birthYear . CapitalCityId
# capitaCity -> id , name ,numCitizens , countryID
# 2 classes to store all the records from the database
# Country  -> id , size , name , birthYear . CapitalCityId
# capitaCity -> id , name ,numCitizens , countryID

#POPO -> plain old python objects
class Country:
    def __init__(self,id, name , size_km,birth_year,capitalCity_id):
        self.id= id
        self.name = name
        self.size_km= size_km
        self.birth_year= birth_year
        self.capitalCity_id=capitalCity_id

    def __str__(self) :
        return f' Country [{self.id},{self.name},{self.size_km},{self.birth_year},{self.capitalCity_id} ]'

## POPO
class CapitalCity:
    def __init__(self,id, name , numCitizens,CountryId):
        self.id= id
        self.name = name
        self.numCitizens= numCitizens
        self.CountryId= CountryId

    def __str__(self) :
        return f' CapitalCity [{self.id},{self.name},{self.numCitizens},{self.CountryId} ]'

import sqlite3

conn = sqlite3.connect(r'D:\work\INTDEVOPS\db\DB1.1.db')
listOfcountries=[];
crusr  = conn.execute('SELECT * FROM Country')
for record in crusr:
    country = Country(record[0],record[1],record[2],record[3],record[4])
    listOfcountries.append(country)

for n in listOfcountries:
    print(type(n))


