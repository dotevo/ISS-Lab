/*
 * dwuZ_acc_data.c
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

#include "dwuZ_acc.h"
#include "dwuZ_acc_private.h"

/* Block parameters (auto storage) */
Parameters rtDefaultParameters = {
  -0.5,                                /* Computed Parameter: P_0
                                        * Referenced by: '<Root>/Transfer Fcn'
                                        */
  1.0,                                 /* Computed Parameter: P_1
                                        * Referenced by: '<Root>/Transfer Fcn'
                                        */
  0.5,                                 /* Computed Parameter: P_2
                                        * Referenced by: '<Root>/Transfer Fcn'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<Root>/Step'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<Root>/Step'
                                        */
  5.0,                                 /* Expression: 5
                                        * Referenced by: '<Root>/Step'
                                        */
  0.1,                                 /* Expression: 0.1
                                        * Referenced by: '<Root>/Relay1'
                                        */
  -0.1,                                /* Expression: -0.1
                                        * Referenced by: '<Root>/Relay1'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<Root>/Relay1'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<Root>/Relay1'
                                        */
  10.0,                                /* Expression: 10
                                        * Referenced by: '<Root>/Gain'
                                        */
  -0.5,                                /* Computed Parameter: P_13
                                        * Referenced by: '<Root>/Transfer Fcn1'
                                        */
  1.0,                                 /* Computed Parameter: P_14
                                        * Referenced by: '<Root>/Transfer Fcn1'
                                        */
  0.5                                  /* Computed Parameter: P_15
                                        * Referenced by: '<Root>/Transfer Fcn1'
                                        */
};
