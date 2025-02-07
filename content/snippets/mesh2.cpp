#include <Ivo.hpp>
using namespace ivo;

int main(int argc, char **argv) {

    // Domain.
    const Point21 a{0.0, 0.0};
    const Point21 b{1.0, 0.0};
    const Point21 c{1.0, 1.0};
    const Point21 d{0.0, 1.0};

    const Polygon21 abcd = {a, b, c, d};

    // Elements.
    const Natural Ns = 250;

    // Diagram.
    const auto diagram = mesher2(abcd, Ns);

    // Output.
    mesher2("output/Square.p2", diagram);

    return 0;
}