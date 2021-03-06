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
    program main
        !--------------------------------------------------------------------------------------------------------
        ! the main program for ccfdv3.0 software structures
        ! \author liuxz
        ! \last time  2017-6-10
        ! \versions ccfdv3.0
        !--------------------------------------------------------------------------------------------------------
        use  global_parameter
        use  nodes_paras
        use  nodes_var
        use  nodes_paras
        use  nodes_var_bc
        !>
        implicit none
#if defined PMPI
        include "mpif.h"
#endif
        integer :: ierr


        !*********************************************************
#if defined PMPI
        call mpi_initialization()
        if(myid == myhost)then
            write(*,*) '*********************************************'
            write(*,*) '      ccfd.3.0 :  mpi initialization ......  '
            write(*,*) '*********************************************'
        end if
!************************************************

#else
        myhost      =  0
        myid        =  0
        mycomm        =  0
        istat_size  =  1
        nodes       =  0
#endif
        !>
#if defined PMPI
        if(myid == myhost )then
#endif
            write(*,*) '*********************************************'
            write(*,*) '******************************************   '
            write(*,*) '  ccfd.3.0 versions by supercomputing cas    '
            write(*,*) ' have any questions you can contact with us! '
            write(*,*) '           support_ccfd@sccas.cn             '
            write(*,*) '*********************************************'
            write(*,*) '*********************************************'
#if defined PMPI
        end if
#endif

        if(unstd .eq. 0 )then

            !> call the steady subroutine
            call steady_cfd()

        end if
        if(unstd .eq. 1 .and. ntstep > 0 )then
            !call unsteady()
        end if

        !>
        !>
#if defined PMPI
        if(myid .eq. myhost)then
#endif
            write(*,*) '*********************************************'
            write(*,*) '      ccfd.3.0 :  computing finished         '
            write(*,*) '      the information you can see from the files at '
            write(*,*) '*********************************************'
#if defined PMPI
        end if
        !>
        !>
        call mpi_barrier(mycomm,ierr)
        call mpi_finalize(ierr)
#endif
    end program  main
