      select nombre, clave from concurso;
      accept v_concurso prompt "ingrese el id del concurso : ";
      select clave, fechai as FechaInicio, fechaf as FechaFin, fechaliminscripcion as FechaLimiteInscripcion from calendario where &v_concurso = clave_concurso;
      accept v_calendario prompt "ingrese el id del calendario : ";
      accept v_fecha_de_inscripcion date prompt "ingrese la fecha de inscripcion : ";
      select primer_nombre, clave from catador_aprendiz;
      accept v_catador prompt "ingrese el id del catador: ";
      exec generar_inscripcion(null,&v_catador,&v_calendario,'&v_fecha_de_inscripcion');