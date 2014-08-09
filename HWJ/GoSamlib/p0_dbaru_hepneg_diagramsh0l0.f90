module     p0_dbaru_hepneg_diagramsh0l0
   ! file: /home/gionata/Documenti/Lavoro/GoSamPowheg/POWHEG-BOX/HWJ_tmp/GoSam_ &
   ! &POWHEG/Virtual/p0_dbaru_hepneg/helicity0diagramsl0.f90
   ! generator: buildfortranborn.py
   use p0_dbaru_hepneg_color, only: numcs
   use p0_dbaru_hepneg_config, only: ki
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   complex(ki), dimension(numcs), parameter :: zero_col = 0.0_ki
   public :: amplitude
contains
!---#[ function amplitude:
   function amplitude()
      use p0_dbaru_hepneg_model
      use p0_dbaru_hepneg_kinematics
      use p0_dbaru_hepneg_color
      use p0_dbaru_hepneg_config, only: debug_lo_diagrams, &
        & use_sorted_sum
      use p0_dbaru_hepneg_accu, only: sorted_sum
      use p0_dbaru_hepneg_util, only: inspect_lo_diagram
      implicit none
      complex(ki), dimension(numcs) :: amplitude
      complex(ki), dimension(6) :: abb
!      complex(ki), dimension(2,numcs) :: diagrams
      integer :: i
      amplitude(:) = 0.0_ki
      abb(1)=1.0_ki/(-mW**2+es345+i_*mW*wW)
      abb(2)=1.0_ki/(-mW**2+es45+i_*mW*wW)
      abb(3)=es61**(-1)
      abb(4)=1.0_ki/(-es61-es12+es345)
      abb(5)=spbk6e6*spak5k6
      abb(6)=-spak1k5*spbe6k1
      abb(5)=abb(5)+abb(6)
      abb(5)=abb(3)*spak1e6*spbk4k2*abb(5)
      abb(6)=-spak1k5*abb(4)*spae6k6*spbe6k2*spbk6k4
      abb(5)=abb(6)+abb(5)
      abb(5)=2.0_ki*abb(1)*abb(2)*CVDU*gHWW*i_*abb(5)*gW**2
      amplitude=c1*abb(5)
      if (debug_lo_diagrams) then
         write(*,*) "Using Born optimization, debug_lo_diagrams not implemented&
         &."
      end if
!      if (use_sorted_sum) then
!         do i=1,numcs
!            amplitude(i) = sorted_sum(diagrams(i))
!         end do
!      else
!         do i=1,numcs
!            amplitude(i) = sum(diagrams(i))
!         end do
!      end if
   end function     amplitude
!---#] function amplitude:
end module p0_dbaru_hepneg_diagramsh0l0