-- | A 'Target' describes that for which code may be intended. Targets are used both during actual
-- | lowering of LLVM IR to machine code and by some optimization passes which use the target to
-- | judge costs.
module LLVM.General.Target (
   lookupTarget,
   TargetOptions,
   Target, TargetMachine,
   CPUFeature(..),
   withTargetOptions, peekTargetOptions, pokeTargetOptions,
   withTargetMachine, withDefaultTargetMachine,
   getDefaultTargetTriple, getProcessTargetTriple, getHostCPUName, getHostCPUFeatures,
   getTargetMachineDataLayout, initializeNativeTarget, initializeAllTargets,
   TargetLibraryInfo,
   getLibraryFunction,
   getLibraryFunctionName,
   setLibraryFunctionAvailableWithName,
   withTargetLibraryInfo
 ) where

import LLVM.General.Internal.Target

