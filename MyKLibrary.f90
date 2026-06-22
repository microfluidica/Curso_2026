!-------------------------------------------------------------------------------
!> File: MyLibrary.f90
!> Written by: PAK, 23 May 2018
!> Modified by: -
!-------------------------------------------------------------------------------
FUNCTION MyKFunction(Model, n, f) RESULT(k)
USE DefUtils
TYPE(Model_t) :: Model
INTEGER :: n
REAL(KIND=dp) :: f, k

TYPE(Variable_t), POINTER :: VelocityVariable
REAL(KIND=dp) :: NodalVelocity
INTEGER :: DofIndex
VelocityVariable => VariableGet(Model % Variables,'Flow Solution')
DofIndex = VelocityVariable % Perm(n)
NodalVelocity = VelocityVariable % Values(dofIndex)

k=

END FUNCTION MyKFunction
