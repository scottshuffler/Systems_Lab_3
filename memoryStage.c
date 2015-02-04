#include "memoryStage.h"
#include "tools.h"

//M register holds the input for the memory stage.
//It is only accessible from this file. (static)
static mregister M;

// Function: getMregister
// Description: Returns a copy of the M register
// Params: none
// Returns: mregister
// Modifies: none
mregister getMregister()
{
    return M;
}

// Function: clearMregister
// Description: Returns a copy of the M register
// Params: none
// Returns: none
// Modifies: M
void clearMregister()
{
  clearBuffer((char *) &M, sizeof(M));
}
