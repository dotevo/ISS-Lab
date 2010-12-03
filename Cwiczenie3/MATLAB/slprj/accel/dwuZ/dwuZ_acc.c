/*
 * This file is not available for use in any application other than as a
 * MATLAB(R) MEX file for use with the Simulink(R) product.
 */

/*
 * dwuZ_acc.c
 *
 * Real-Time Workshop code generation for Simulink model "dwuZ_acc.mdl".
 *
 * Model version              : 1.23
 * Real-Time Workshop version : 7.5  (R2010a)  25-Jan-2010
 * C source code generated on : Thu Dec 02 21:32:33 2010
 *
 * Target selection: accel.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Emulation hardware selection:
 *    Differs from embedded hardware (MATLAB Host)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */
#include <math.h>
#include "dwuZ_acc.h"
#include "dwuZ_acc_private.h"
#include <stdio.h>
#include "simstruc.h"
#include "fixedpoint.h"
#define CodeFormat                     S-Function
#define AccDefine1                     Accelerator_S-Function

/* Outputs for root system: '<Root>' */
static void mdlOutputs(SimStruct *S, int_T tid)
{
  /* local block i/o variables */
  real_T B_0_0_0;
  real_T currentTime;

  /* TransferFcn: '<Root>/Transfer Fcn' */
  B_0_0_0 = ((Parameters *) ssGetDefaultParam(S))->P_2*((ContinuousStates *)
    ssGetContStates(S))->TransferFcn_CSTATE;
  if (ssIsSampleHit(S, 1, 0)) {
    currentTime = ssGetTaskTime(S,0);
    if (ssIsMajorTimeStep(S)) {
      ((D_Work *) ssGetRootDWork(S))->Step_MODE = (currentTime >= ((Parameters *)
        ssGetDefaultParam(S))->P_5);
    }

    if (((D_Work *) ssGetRootDWork(S))->Step_MODE == 1) {
      ((BlockIO *) _ssGetBlockIO(S))->B_0_1_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_7;
    } else {
      ((BlockIO *) _ssGetBlockIO(S))->B_0_1_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_6;
    }
  }

  ((BlockIO *) _ssGetBlockIO(S))->B_0_2_0 = ((BlockIO *) _ssGetBlockIO(S))
    ->B_0_1_0 - B_0_0_0;
  if (ssIsMajorTimeStep(S)) {
    if (((BlockIO *) _ssGetBlockIO(S))->B_0_2_0 >= ((Parameters *)
         ssGetDefaultParam(S))->P_8) {
      ((D_Work *) ssGetRootDWork(S))->Relay1_Mode = TRUE;
    } else {
      if (((BlockIO *) _ssGetBlockIO(S))->B_0_2_0 <= ((Parameters *)
           ssGetDefaultParam(S))->P_9) {
        ((D_Work *) ssGetRootDWork(S))->Relay1_Mode = FALSE;
      }
    }
  }

  if (((D_Work *) ssGetRootDWork(S))->Relay1_Mode) {
    ((BlockIO *) _ssGetBlockIO(S))->B_0_3_0 = ((Parameters *) ssGetDefaultParam
      (S))->P_10;
  } else {
    ((BlockIO *) _ssGetBlockIO(S))->B_0_3_0 = ((Parameters *) ssGetDefaultParam
      (S))->P_11;
  }

  /* Scope: '<Root>/Scope' */

  /* Call into Simulink for Scope */
  ssCallAccelRunBlock(S, 0, 4, SS_CALL_MDL_OUTPUTS);

  /* ToWorkspace: '<Root>/To Workspace' */

  /* Call into Simulink for To Workspace */
  ssCallAccelRunBlock(S, 0, 5, SS_CALL_MDL_OUTPUTS);
  ((BlockIO *) _ssGetBlockIO(S))->B_0_6_0 = ((Parameters *) ssGetDefaultParam(S))
    ->P_12 * ((BlockIO *) _ssGetBlockIO(S))->B_0_3_0;

  /* TransferFcn: '<Root>/Transfer Fcn1' */
  ((BlockIO *) _ssGetBlockIO(S))->B_0_7_0 = ((Parameters *) ssGetDefaultParam(S))
    ->P_15*((ContinuousStates *) ssGetContStates(S))->TransferFcn1_CSTATE;

  /* tid is required for a uniform function interface.
   * Argument tid is not used in the function. */
  UNUSED_PARAMETER(tid);
}

/* Update for root system: '<Root>' */
#define MDL_UPDATE

static void mdlUpdate(SimStruct *S, int_T tid)
{
  /* tid is required for a uniform function interface.
   * Argument tid is not used in the function. */
  UNUSED_PARAMETER(tid);
}

/* Derivatives for root system: '<Root>' */
#define MDL_DERIVATIVES

static void mdlDerivatives(SimStruct *S)
{
  /* Derivatives for TransferFcn: '<Root>/Transfer Fcn' */
  {
    ((StateDerivatives *) ssGetdX(S))->TransferFcn_CSTATE = (((Parameters *)
      ssGetDefaultParam(S))->P_0)*((ContinuousStates *) ssGetContStates(S))
      ->TransferFcn_CSTATE;
    ((StateDerivatives *) ssGetdX(S))->TransferFcn_CSTATE += ((Parameters *)
      ssGetDefaultParam(S))->P_1*((BlockIO *) _ssGetBlockIO(S))->B_0_7_0;
  }

  /* Derivatives for TransferFcn: '<Root>/Transfer Fcn1' */
  {
    ((StateDerivatives *) ssGetdX(S))->TransferFcn1_CSTATE = (((Parameters *)
      ssGetDefaultParam(S))->P_13)*((ContinuousStates *) ssGetContStates(S))
      ->TransferFcn1_CSTATE;
    ((StateDerivatives *) ssGetdX(S))->TransferFcn1_CSTATE += ((Parameters *)
      ssGetDefaultParam(S))->P_14*((BlockIO *) _ssGetBlockIO(S))->B_0_6_0;
  }
}

/* ZeroCrossings for root system: '<Root>' */
#define MDL_ZERO_CROSSINGS

static void mdlZeroCrossings(SimStruct *S)
{
  ((ZCSignalValues *) ssGetSolverZcSignalVector(S))->Step_StepTime_ZC = ssGetT(S)
    - ((Parameters *) ssGetDefaultParam(S))->P_5;
  if (((D_Work *) ssGetRootDWork(S))->Relay1_Mode) {
    ((ZCSignalValues *) ssGetSolverZcSignalVector(S))->Relay1_RelayZC_ZC =
      ((BlockIO *) _ssGetBlockIO(S))->B_0_2_0 - ((Parameters *)
      ssGetDefaultParam(S))->P_9;
  } else {
    ((ZCSignalValues *) ssGetSolverZcSignalVector(S))->Relay1_RelayZC_ZC =
      ((BlockIO *) _ssGetBlockIO(S))->B_0_2_0 - ((Parameters *)
      ssGetDefaultParam(S))->P_8;
  }
}

/* Function to initialize sizes */
static void mdlInitializeSizes(SimStruct *S)
{
  /* checksum */
  ssSetChecksumVal(S, 0, 2246771387U);
  ssSetChecksumVal(S, 1, 2993295543U);
  ssSetChecksumVal(S, 2, 1614764717U);
  ssSetChecksumVal(S, 3, 3242298669U);

  /* options */
  ssSetOptions(S, SS_OPTION_EXCEPTION_FREE_CODE);

  /* Accelerator check memory map size match for DWork */
  if (ssGetSizeofDWork(S) != sizeof(D_Work)) {
    ssSetErrorStatus(S,"Unexpected error: Internal DWork sizes do "
                     "not match for accelerator mex file.");
  }

  /* Accelerator check memory map size match for BlockIO */
  if (ssGetSizeofGlobalBlockIO(S) != sizeof(BlockIO)) {
    ssSetErrorStatus(S,"Unexpected error: Internal BlockIO sizes do "
                     "not match for accelerator mex file.");
  }

  /* model parameters */
  _ssSetDefaultParam(S, (real_T *) &rtDefaultParameters);
}

/* mdlInitializeSampleTimes function (used to set up function-call connections) */
static void mdlInitializeSampleTimes(SimStruct *S)
{
}

/* Empty mdlTerminate function (never called) */
static void mdlTerminate(SimStruct *S)
{
}

/* MATLAB MEX Glue */
#include "simulink.c"
