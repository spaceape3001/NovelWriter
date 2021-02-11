#include "common.hpp"

class RTF : public Formatter {
public:
    RTF()
    {
        sSuffix     = ".rtf";
        formats.insert("rtf");
    }
    
    ~RTF()
    {
    }
};


Formatter*  fmtRTF()
{
    return new RTF;
}

