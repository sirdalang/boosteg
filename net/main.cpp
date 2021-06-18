
#include <ostream>
#include <boost/iostreams/stream.hpp>
#include <boost/iostreams/device/file.hpp>

namespace bio = boost::iostreams;

int main()
{
    bio::stream_buffer<bio::file_sink> buf ("test.tmp");
    std::ostream outfile (& buf);
    outfile << "this is really amazing!";
    return 0;
}
