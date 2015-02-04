#include "writebackStage.h"
#include "tools.h"

//W register holds the input for the writeback stage.
//It is only accessible from this file. (static)
static wregister W;

// Function: getWregister
// Description: Returns a copy of the W register
// Params: none
// Returns: wregister
// Modifies: none
wregister getWregister()
{
    return W;
}

// Function: clearWregister
// Description: Returns a copy of the W register
// Params: none
// Returns: none
// Modifies: W
void clearWregister()
{
  clearBuffer((char *) &W, sizeof(W));
}

