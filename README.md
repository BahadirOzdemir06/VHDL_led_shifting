# VHDL Kayan LED Uygulaması / LED Shift Register

## Açıklama (Türkçe)

Bu proje, bir LED dizisinin her saniyede bir sağa kayarak yanmasını sağlayan VHDL tabanlı basit bir kayan LED uygulamasıdır. 8-bitlik LED dizisi başlangıçta sol baştaki LED aktif olacak şekilde başlatılır ve her saniyede bir aktif LED bir bit sağa kaydırılır. En sağa ulaşıldığında tekrar en sola döner.

Bu tasarım, temel **kayıcı register (shift register)** mantığına ve bir zaman sayacına (counter) dayalıdır. Saat frekansı 1 MHz olacak şekilde ayarlanmıştır; bu nedenle sayacın 1 saniyede bir tetiklenmesi için 1.000.000 çevrim sayması gerekir.

### Özellikler

- 8-bit kayan LED gösterimi
- Her 1 saniyede bir sağa kayma
- Asenkron sıfırlama (aktif düşük)
- Saat frekansı: 1 MHz (varsayılan)

### Portlar

| Port   | Yön | Açıklama                                |
|--------|-----|-----------------------------------------|
| clk    | in  | Sistem saat sinyali                     |
| rst_n  | in  | Aktif düşük reset (0 → sıfırla)         |
| leds   | out | Kayan LED çıkışı (8 bitlik vektör)      |

### Nasıl Kullanılır

1. `Soru6_Kayan_Led.vhd` dosyasını projenize dahil edin.
2. Tasarımınızın saat frekansı 1 MHz değilse `counter` sınır değerini güncelleyin.
3. FPGA veya simülasyon ortamında çalıştırarak LED dizisinin kaymasını izleyin.
4. `rst_n` sinyali ile sistemi sıfırlayabilirsiniz.

---

## Description (English)

This project implements a basic **LED shift register** using VHDL. It creates a visual effect where an active LED bit shifts right every second. Once the active bit reaches the least significant bit (rightmost), it resets to the most significant bit (leftmost) and continues the cycle.

The design relies on a time counter and standard right-shift logic. The timing is based on a 1 MHz clock input, with a counter incrementing up to 999,999 to create a 1-second delay between each shift.

### Features

- 8-bit LED shift effect
- One right shift per second
- Asynchronous reset (active-low)
- Clock frequency: 1 MHz (by default)

### Ports

| Port   | Direction | Description                          |
|--------|-----------|--------------------------------------|
| clk    | in        | System clock signal                  |
| rst_n  | in        | Active-low reset (0 = reset)         |
| leds   | out       | LED output (8-bit shift register)    |

### How to Use

1. Add the `Soru6_Kayan_Led.vhd` file to your project.
2. If your system clock is not 1 MHz, adjust the counter limit accordingly.
3. Run the design on an FPGA or simulate it to observe the shifting LED pattern.
4. Use `rst_n` to asynchronously reset the system.




