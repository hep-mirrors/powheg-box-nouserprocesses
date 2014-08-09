module     p0_dbard_hepemg_d553h1l1
   ! file: /home/gionata/Documenti/Lavoro/GoSamPowheg/POWHEG-BOX/HZJ_tmp/GoSam_ &
   ! &POWHEG/Virtual/p0_dbard_hepemg/helicity1d553h1l1.f90
   ! generator: buildfortran.py
   use p0_dbard_hepemg_config, only: ki
   use p0_dbard_hepemg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbard_hepemg_model
      use p0_dbard_hepemg_kinematics
      use p0_dbard_hepemg_color
      use p0_dbard_hepemg_abbrevd553h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc553(36)
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspe6
      complex(ki) :: Qspvae6k6
      complex(ki) :: Qspvak6e6
      complex(ki) :: Qspvak5e6
      complex(ki) :: Qspvae6k4
      complex(ki) :: Qspvae6l3
      complex(ki) :: Qspval3e6
      complex(ki) :: Qspvae6k2
      complex(ki) :: Qspvak2e6
      complex(ki) :: Qspvae6k1
      complex(ki) :: Qspvak6k4
      complex(ki) :: Qspvak6k1
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak2k6
      complex(ki) :: Qspk6
      complex(ki) :: QspQ
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspe6 = dotproduct(Q,e6)
      Qspvae6k6 = dotproduct(Q,spvae6k6)
      Qspvak6e6 = dotproduct(Q,spvak6e6)
      Qspvak5e6 = dotproduct(Q,spvak5e6)
      Qspvae6k4 = dotproduct(Q,spvae6k4)
      Qspvae6l3 = dotproduct(Q,spvae6l3)
      Qspval3e6 = dotproduct(Q,spval3e6)
      Qspvae6k2 = dotproduct(Q,spvae6k2)
      Qspvak2e6 = dotproduct(Q,spvak2e6)
      Qspvae6k1 = dotproduct(Q,spvae6k1)
      Qspvak6k4 = dotproduct(Q,spvak6k4)
      Qspvak6k1 = dotproduct(Q,spvak6k1)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak2k6 = dotproduct(Q,spvak2k6)
      Qspk6 = dotproduct(Q,k6)
      QspQ = dotproduct(Q,Q)
      acc553(1)=abb553(8)
      acc553(2)=abb553(9)
      acc553(3)=abb553(10)
      acc553(4)=abb553(11)
      acc553(5)=abb553(12)
      acc553(6)=abb553(13)
      acc553(7)=abb553(14)
      acc553(8)=abb553(15)
      acc553(9)=abb553(16)
      acc553(10)=abb553(17)
      acc553(11)=abb553(18)
      acc553(12)=abb553(20)
      acc553(13)=abb553(21)
      acc553(14)=abb553(22)
      acc553(15)=abb553(23)
      acc553(16)=abb553(25)
      acc553(17)=abb553(27)
      acc553(18)=abb553(28)
      acc553(19)=abb553(29)
      acc553(20)=abb553(31)
      acc553(21)=Qspvak5k1*acc553(6)
      acc553(22)=Qspvak2k4*acc553(4)
      acc553(23)=Qspvak2k1*acc553(5)
      acc553(21)=acc553(23)+acc553(22)+acc553(21)+acc553(7)
      acc553(21)=Qspe6*acc553(21)
      acc553(22)=Qspvae6k6*acc553(18)
      acc553(23)=Qspvak6e6*acc553(20)
      acc553(24)=Qspvak5e6*acc553(19)
      acc553(25)=Qspvae6k4*acc553(15)
      acc553(26)=Qspvae6l3*acc553(16)
      acc553(27)=Qspval3e6*acc553(17)
      acc553(28)=Qspvae6k2*acc553(3)
      acc553(29)=Qspvak2e6*acc553(2)
      acc553(30)=Qspvae6k1*acc553(8)
      acc553(31)=Qspvak6k4*acc553(13)
      acc553(32)=Qspvak6k1*acc553(9)
      acc553(33)=Qspvak5k6*acc553(14)
      acc553(34)=Qspvak2k6*acc553(11)
      acc553(35)=Qspk6*acc553(12)
      acc553(36)=QspQ*acc553(10)
      brack=acc553(1)+acc553(21)+acc553(22)+acc553(23)+acc553(24)+acc553(25)+ac&
      &c553(26)+acc553(27)+acc553(28)+acc553(29)+acc553(30)+acc553(31)+acc553(3&
      &2)+acc553(33)+acc553(34)+acc553(35)+acc553(36)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbard_hepemg_groups, only: &
!           & sign => diagram553_sign, shift => diagram553_shift
      use p0_dbard_hepemg_globalsl1, only: epspow
      use p0_dbard_hepemg_kinematics
      use p0_dbard_hepemg_abbrevd553h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d553
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d553 = 0.0_ki
      d553 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d553, ki), aimag(d553), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_hepemg_globalsl1, only: epspow
      use p0_dbard_hepemg_kinematics
      use p0_dbard_hepemg_abbrevd553h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d553
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d553 = 0.0_ki
      d553 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d553, ki), aimag(d553), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbard_hepemg_d553h1l1