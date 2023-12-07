-- models/p3k3_keluarga.sql
{{ config(
  materialized='table',
  schema='public'
) }}

SELECT
  d_p3ke_keluarga.id_sumber,
  d_p3ke_keluarga.nik,
  d_p3ke_keluarga.tahun,
  d_p3ke_keluarga.tanggal_lahir,
  d_p3ke_keluarga.desil_kesejahteraan,
  d_p3ke_keluarga.resiko_stunting,
  d_p3ke_keluarga.created_at,
  d_p3ke_keluarga.updated_at,
  d_p3ke_keluarga.kemendagri_kode_desa,
  d_p3ke_keluarga.provinsi,
  d_p3ke_keluarga.kabupaten_kota,
  d_p3ke_keluarga.kecamatan,
  d_p3ke_keluarga.desa,
  d_p3ke_keluarga.alamat,
  d_p3ke_keluarga.penerima_sembako,
  d_p3ke_keluarga.padan_dukcapil,
  d_p3ke_keluarga.pekerjaan,
  d_p3ke_keluarga.pendidikan,
  d_p3ke_keluarga.kepemilikan_rumah,
  d_p3ke_keluarga.memiliki_simpanan_uang_perhiasan_ternak_lainnya,
  d_p3ke_keluarga.jenis_atap,
  d_p3ke_keluarga.jenis_dinding,
  d_p3ke_keluarga.jenis_lantai,
  d_p3ke_keluarga.sumber_penerangan,
  d_p3ke_keluarga.bahan_bakar_memasak,
  d_p3ke_keluarga.sumber_air_minum,
  d_p3ke_keluarga.memiliki_fasilitas_buang_air_besar,
  d_p3ke_keluarga.penerima_bpnt,
  d_p3ke_keluarga.penerima_bpum,
  d_p3ke_keluarga.penerima_bst,
  d_p3ke_keluarga_2023.id_keluarga_p3ke,
  d_p3ke_keluarga_2023.kepala_keluarga,
  d_p3ke_keluarga_2023.jenis_kelamin,
  d_p3ke_keluarga_2023.penerima_pkh,
  d_p3ke_keluarga_2023.kemendagri_kode_kabupaten_kota
FROM {{ ref('d_p3ke_keluarga') }} AS d_p3ke_keluarga
JOIN {{ ref('d_p3ke_keluarga_2023') }} AS d_p3ke_keluarga_2023
  ON d_p3ke_keluarga.id_sumber = d_p3ke_keluarga_2023.id_sumber;
