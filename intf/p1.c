#include <boost/python.hpp>
#include "p1.h"

using namespace boost::python;

BOOST_PYTHON_MODULE(p1)
{
    def("greet", greet);
    def("add", add);

    class_<Box>("Box", init<>())
        .def(init<int,int>())
        .def("Area",&Box::Area)
        .def_readonly("width",&Box::_width)
        .def_readonly("height",&Box::_height)
        ;
}
