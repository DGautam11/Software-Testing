#Function checks whether a triangle is equilateral or isosceles or scalene based on given length of sides
#Deepan Gautam
def type_of_triangle(a,b,c):
    try:
        side_a = float(a)
        side_b = float(b)
        side_c = float(c)
         #checks whether given three sides of a triangle forms a valid triangle or not
        if side_a+side_b>=side_c and side_b+side_c>=side_a and side_c+side_a>=side_b:

            if side_a==side_b and side_b==side_c:
                return 'Triangle is Equilateral.'
            elif side_a==side_b or side_b==side_c or side_a==side_c:
                return 'Triangle is Isosceles.'
            else:
                return 'Triangle is Scalane.'
        else:
            return 'Triangle is not possible from given sides.'

    except:
        return 'Invalid input data value'

   