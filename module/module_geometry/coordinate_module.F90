!   _______________________________________________________________________________
!    _______/\\\\\\\\\_______/\\\\\\\\\______/\\\\\\\\\\\\\\__/\\\\\\\\\\\\\\\______
!     _____/\\\////////_____/\\\////////_____\/\\\//////////__\/\/////////////________
!      ___/\\\/____________/\\\/______________\/\\\____________\/\\\________/\\\\_______
!       __/\\\____________/\\\_________________\/\\\\\\\\\\\\\__\/\\\_______\////________
!        _\/\\\___________\/\\\_________________\/\\\/////////___\/\\\________/\\\\_______
!         _\//\\\__________\//\\\________________\/\\\____________\/\\\_______\////________
!          __\///\\\_________\///\\\______________\/\\\____________\/\\\______/\\\\_________
!           ____\////\\\\\\\\\____\////\\\\\\\\\___\/\\\____________\/\\\\\\\\\////__________
!            _______\/////////_______\/////////_____\///_____________\/////////_______________
!            __________________________________________________________________________________
!----------------------------------------------------------------------------------------------
!>  subroutine input_files_cgns
!>  last edit 2016-05-24
!>  last edit by liuxz
!----------------------------------------------------------------------------------------------
	module coordinate_module
		!>
		!>
		use global_parameter
		!>
		!>
		implicit none
		!>
		!>
		type ,public :: coordinate_type
			!>
			!>
            real(kind=dprec) :: x
			!>
			!>
			real(kind=dprec) :: y
			!>
			!>
			real(kind=dprec) :: z
			!>
			!>
			!>
		end type coordinate_type
		!>
		!>
!		type(coordinate_type),pointer::coor
		!>
		!>
		contains
		!>
!		!>
!		type(coordinate_type),pointer :: coordinate
		!>
		!>
		!>
		!>
	end module coordinate_module
