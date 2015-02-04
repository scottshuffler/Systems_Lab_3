#include "executeStage.h"
#include "tools.h"

//E register holds the input for the execute stage.
//It is only accessible from this file. (static)
static eregister E;

// Function: getEregister
// Description: Returns a copy of the E register
// Params: none
// Returns: eregister
// Modifies: none
eregister getEregister()
{
    return E;
}

// Function: clearEregister
// Description: Returns a copy of the E register
// Params: none
// Returns: none
// Modifies: E
void clearEregister()
{
  clearBuffer((char *) &E, sizeof(E));
}

