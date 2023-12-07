-- models/source_table_2.sql
{{ config(
  materialized='table',
  schema='public'
) }}

SELECT
  id AS id_sumber,
  id_sumber,
  id_keluarga_p3ke,
  tahun,
  dimuktakhirkan_tahun,
  kemendagri_kode_provinsi,
  provinsi,
  kemendagri_kode_kabupaten_kota,
  kabupaten_kota,
  kecamatan,
  desa_kelurahan,
  kode_kemendagri_desa,
  alamat,
  desil_kesejahteraan,
  persentil,
  prioritas_verval,
  nama_kepala_keluarga,
  nik_kepala_keluarga,
  nik_kepala_keluarga_padan_kemendagri,
  jenis_kelamin_kepala_keluarga,
  tanggal_lahir_kepala_keluarga,
  pekerjaan_kepala_keluarga,
  status_pekerjaan_kepala_keluarga,
  pendidikan_kepala_keluarga,
  status_kawin_kepala_keluarga,
  kepemilikan_rumah,
  memiliki_simpanan_uang_perhiasan_ternak_lainnya,
  jenis_atap,
  kualitas_atap,
  jenis_dinding,
  kualitas_dinding,
  jenis_lantai,
  kualitas_lantai,
  sumber_penerangan,
  daya_listrik_terpasang,
  bahan_bakar_memasak,
  sumber_air_minum,
  memiliki_fasilitas_buang_air_besar,
  resiko_stunting,
  penerima_bpnt,
  penerima_bpum,
  penerima_bst,
  penerima_pkh,
  penerima_sembako,
  penerima_prakerja,
  penerima_kur,
  created_at,
  updated_at
FROM public.d_p3ke_keluarga_2023;