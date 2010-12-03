/*
 * dwuZ_acc.h
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
#ifndef RTW_HEADER_dwuZ_acc_h_
#define RTW_HEADER_dwuZ_acc_h_
#ifndef dwuZ_acc_COMMON_INCLUDES_
# define dwuZ_acc_COMMON_INCLUDES_
#include <stdlib.h>
#include <stddef.h>
#define S_FUNCTION_NAME                simulink_only_sfcn
#define S_FUNCTION_LEVEL               2
#define RTW_GENERATED_S_FUNCTION
#include "rtwtypes.h"
#include "simstruc.h"
#include "fixedpoint.h"
#endif                                 /* dwuZ_acc_COMMON_INCLUDES_ */

#include "dwuZ_acc_types.h"

/* Block signals (auto storage) */
typedef struct {
  real_T B_0_1_0;                      /* '<Root>/Step' */
  real_T B_0_2_0;                      /* '<Root>/Sum1' */
  real_T B_0_6_0;                      /* '<Root>/Gain' */
  real_T B_0_7_0;                      /* '<Root>/Transfer Fcn1' */
  real_T B_0_3_0;                      /* '<Root>/Relay1' */
} BlockIO;

/* Block states (auto storage) for system '<Root>' */
typedef struct {
  struct {
    void *LoggedData;
  } Scope_PWORK;                       /* '<Root>/Scope' */

  struct {
    void *LoggedData;
  } ToWorkspace_PWORK;                 /* '<Root>/To Workspace' */

  int_T Step_MODE;                     /* '<Root>/Step' */
  boolean_T Relay1_Mode;               /* '<Root>/Relay1' */
  char pad_Relay1_Mode[3];
} D_Work;

/* Continuous states (auto storage) */
typedef struct {
  real_T TransferFcn_CSTATE;           /* '<Root>/Transfer Fcn' */
  real_T TransferFcn1_CSTATE;          /* '<Root>/Transfer Fcn1' */
} ContinuousStates;

/* State derivatives (auto storage) */
typedef struct {
  real_T TransferFcn_CSTATE;           /* '<Root>/Transfer Fcn' */
  real_T TransferFcn1_CSTATE;          /* '<Root>/Transfer Fcn1' */
} StateDerivatives;

/* State disabled  */
typedef struct {
  boolean_T TransferFcn_CSTATE;        /* '<Root>/Transfer Fcn' */
  boolean_T TransferFcn1_CSTATE;       /* '<Root>/Transfer Fcn1' */
} StateDisabled;

/* Zero-crossing (trigger) state */
typedef struct {
  real_T Step_StepTime_ZC;             /* '<Root>/Step' */
  real_T Relay1_RelayZC_ZC;            /* '<Root>/Relay1' */
} ZCSignalValues;

/* Zero-crossing (trigger) state */
typedef struct {
  ZCSigState Step_StepTime_ZCE;        /* '<Root>/Step' */
  ZCSigState Relay1_RelayZC_ZCE;       /* '<Root>/Relay1' */
} PrevZCSigStates;

/* Parameters (auto storage) */
struct Parameters_ {
  real_T P_0;                          /* Computed Parameter: P_0
                                        * Referenced by: '<Root>/Transfer Fcn'
                                        */
  real_T P_1;                          /* Computed Parameter: P_1
                                        * Referenced by: '<Root>/Transfer Fcn'
                                        */
  real_T P_2;                          /* Computed Parameter: P_2
                                        * Referenced by: '<Root>/Transfer Fcn'
                                        */
  real_T P_5;                          /* Expression: 0
                                        * Referenced by: '<Root>/Step'
                                        */
  real_T P_6;                          /* Expression: 0
                                        * Referenced by: '<Root>/Step'
                                        */
  real_T P_7;                          /* Expression: 5
                                        * Referenced by: '<Root>/Step'
                                        */
  real_T P_8;                          /* Expression: 0.1
                                        * Referenced by: '<Root>/Relay1'
                                        */
  real_T P_9;                          /* Expression: -0.1
                                        * Referenced by: '<Root>/Relay1'
                                        */
  real_T P_10;                         /* Expression: 1
                                        * Referenced by: '<Root>/Relay1'
                                        */
  real_T P_11;                         /* Expression: 0
                                        * Referenced by: '<Root>/Relay1'
                                        */
  real_T P_12;                         /* Expression: 10
                                        * Referenced by: '<Root>/Gain'
                                        */
  real_T P_13;                         /* Computed Parameter: P_13
                                        * Referenced by: '<Root>/Transfer Fcn1'
                                        */
  real_T P_14;                         /* Computed Parameter: P_14
                                        * Referenced by: '<Root>/Transfer Fcn1'
                                        */
  real_T P_15;                         /* Computed Parameter: P_15
                                        * Referenced by: '<Root>/Transfer Fcn1'
                                        */
};

extern Parameters rtDefaultParameters; /* parameters */

#endif                                 /* RTW_HEADER_dwuZ_acc_h_ */
