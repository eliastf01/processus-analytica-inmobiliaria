-- Estructura de Datos Maestra - Processus SRL
CREATE TABLE propiedades (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  titulo TEXT NOT NULL,
  precio_venta DECIMAL(15,2),
  zona_barrio TEXT,
  metros_cuadrados DECIMAL(10,2),
  analisis_viabilidad BOOLEAN DEFAULT FALSE, -- Sello de calidad Processus
  fecha_registro TIMESTAMP DEFAULT NOW()
);

CREATE TABLE inteligencia_mercado (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  sector TEXT,
  precio_promedio_m2_historico DECIMAL(10,2),
  tasa_crecimiento_anual DECIMAL(5,2),
  periodo_estudio INT -- Año del estudio de mercado
);
