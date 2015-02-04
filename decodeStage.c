#include "decodeStage.h"
#include "tools.h"

//D register holds the input for the decode stage.
//It is only accessible from this file. (static)
static dregister D;

// Function: getDregister
// Description: Returns a copy of the D register
// Params: none
// Returns: dregister
// Modifies: none
dregister getDregister()
{
    return D;
}

// Function: clearDregister
// Description: Returns a copy of the D register
// Params: none
// Returns: none
// Modifies: D
void clearDregister()
{
  clearBuffer((char *) &D, sizeof(D));
}

