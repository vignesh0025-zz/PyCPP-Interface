
char const* greet()
{
   return "hello, world";
}

int add(int a, int b)
{
    return a + b;
}

class Box
{
    public:
        int _width;
        int _height;

    public:
        Box()
        {
            this->_width = 0;
            this->_height = 0;
        }

        Box(int width, int height)
        {
            this->_width = width;
            this->_height = height;
        }

        int Area()
        {
            return this->_width * this->_height;
        }
}
;
