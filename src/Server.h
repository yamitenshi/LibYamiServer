#ifndef __SERVER_H_
#define __SERVER_H_

#include <string>

class Server {
public:
    Server(unsigned int port);
    virtual void handleRequest(std::string requestBody);

protected:
    const unsigned int port;
};

#endif
